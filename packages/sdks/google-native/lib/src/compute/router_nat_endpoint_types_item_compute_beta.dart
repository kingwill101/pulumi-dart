import 'package:pulumi/pulumi.dart' as pulumi;

enum RouterNatEndpointTypesItemComputeBeta implements pulumi.PulumiEnum<String> {
  endpointTypeManagedProxyLb("ENDPOINT_TYPE_MANAGED_PROXY_LB"),
  endpointTypeSwg("ENDPOINT_TYPE_SWG"),
  endpointTypeVm("ENDPOINT_TYPE_VM");

  const RouterNatEndpointTypesItemComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static RouterNatEndpointTypesItemComputeBeta fromValue(String value) {
    for (final item in RouterNatEndpointTypesItemComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterNatEndpointTypesItemComputeBeta value: $value');
  }
}
