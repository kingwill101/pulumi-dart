enum RouterNatEndpointTypesItem {
  endpointTypeManagedProxyLb("ENDPOINT_TYPE_MANAGED_PROXY_LB"),
  endpointTypeSwg("ENDPOINT_TYPE_SWG"),
  endpointTypeVm("ENDPOINT_TYPE_VM");

  const RouterNatEndpointTypesItem(this.wireValue);
  final String wireValue;

  static RouterNatEndpointTypesItem fromValue(String value) {
    for (final item in RouterNatEndpointTypesItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterNatEndpointTypesItem value: $value');
  }
}
