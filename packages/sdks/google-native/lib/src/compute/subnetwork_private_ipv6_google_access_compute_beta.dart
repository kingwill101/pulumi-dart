import 'package:pulumi/pulumi.dart' as pulumi;

/// This field is for internal use. This field can be both set at resource creation time and updated using patch.
enum SubnetworkPrivateIpv6GoogleAccessComputeBeta implements pulumi.PulumiEnum<String> {
  disableGoogleAccess("DISABLE_GOOGLE_ACCESS"),
  enableBidirectionalAccessToGoogle("ENABLE_BIDIRECTIONAL_ACCESS_TO_GOOGLE"),
  enableOutboundVmAccessToGoogle("ENABLE_OUTBOUND_VM_ACCESS_TO_GOOGLE");

  const SubnetworkPrivateIpv6GoogleAccessComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static SubnetworkPrivateIpv6GoogleAccessComputeBeta fromValue(String value) {
    for (final item in SubnetworkPrivateIpv6GoogleAccessComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubnetworkPrivateIpv6GoogleAccessComputeBeta value: $value');
  }
}
