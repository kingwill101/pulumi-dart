import 'package:pulumi/pulumi.dart' as pulumi;

enum RouterNatEndpointTypesItemComputeV1 implements pulumi.PulumiEnum<String> {
  endpointTypeManagedProxyLb("ENDPOINT_TYPE_MANAGED_PROXY_LB"),
  endpointTypeSwg("ENDPOINT_TYPE_SWG"),
  endpointTypeVm("ENDPOINT_TYPE_VM");

  const RouterNatEndpointTypesItemComputeV1(this.wireValue);
  @override
  final String wireValue;

  static RouterNatEndpointTypesItemComputeV1 fromValue(String value) {
    for (final item in RouterNatEndpointTypesItemComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterNatEndpointTypesItemComputeV1 value: $value');
  }
}
