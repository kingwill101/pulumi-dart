// ignore_for_file: unused_element, unnecessary_cast


class RouterVendorOptions {
  /// Boolean to control whether
  /// the Router gateway is assigned during creation or updated after creation.
  final bool? setRouterGatewayAfterCreate;

  /// Creates a new [RouterVendorOptions].
  /// [setRouterGatewayAfterCreate] Boolean to control whether
  RouterVendorOptions({
    this.setRouterGatewayAfterCreate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'setRouterGatewayAfterCreate': ?setRouterGatewayAfterCreate,
    };
  }

  factory RouterVendorOptions.fromMap(Map<String, dynamic> map) {
    return RouterVendorOptions(
      setRouterGatewayAfterCreate: map['setRouterGatewayAfterCreate'] == null ? null : map['setRouterGatewayAfterCreate'] as bool,
    );
  }
}

