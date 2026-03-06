// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouterVendorOptions {
  /// Boolean to control whether
  /// the Router gateway is assigned during creation or updated after creation.
  final pulumi.Input<bool>? setRouterGatewayAfterCreate;

  /// Creates a new [RouterVendorOptions].
  /// [setRouterGatewayAfterCreate] Boolean to control whether
  const RouterVendorOptions({
    this.setRouterGatewayAfterCreate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'setRouterGatewayAfterCreate': ?setRouterGatewayAfterCreate,
    };
  }

  factory RouterVendorOptions.fromMap(Map<String, dynamic> map) {
    return RouterVendorOptions(
      setRouterGatewayAfterCreate: (() { final guardedValue = map['setRouterGatewayAfterCreate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

