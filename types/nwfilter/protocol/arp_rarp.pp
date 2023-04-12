# nwfilter rule protocol of ARP/RARP
type Libvirt::Nwfilter::Protocol::Arp_rarp = Struct[{
    id            => Enum['arp', 'rarp'],
    match         => Optional[Enum['no','yes']],
    srcmacaddr    => Optional[String[1]],
    srcmacmask    => Optional[String[1]],
    dstmacaddr    => Optional[String[1]],
    dstmacmask    => Optional[String[1]],
    hwtype        => Optional[Integer[0,256]],
    protocoltype  => Optional[Integer[0,256]],
    opcode        => Optional[Variant[
        Integer[0,256],
        Enum['Request',
          'Reply',
          'Request_Reverse',
          'Reply_Reverse',
          'DRARP_Request',
          'DRARP_Reply',
          'DRARP_Error',
          'InARP_Request',
        'ARP_NAK'],
    ]],
    arpsrcmacaddr => Optional[String[1]],
    arpdstmacaddr => Optional[String[1]],
    arpsrcipaddr  => Optional[String[1]],
    arpsrcipmask  => Optional[String[1]],
    arpdstipaddr  => Optional[String[1]],
    arpdstipmask  => Optional[String[1]],
    gratuitous    => Optional[Boolean],
    comment       => Optional[String[1,256]],
    connlimit-above => Optional[Integer],
}]