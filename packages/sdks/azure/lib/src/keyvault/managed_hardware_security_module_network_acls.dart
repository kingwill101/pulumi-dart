// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedHardwareSecurityModuleNetworkAcls {
  /// Specifies which traffic can bypass the network rules. Possible values are `AzureServices` and `None`.
  final pulumi.Input<String> bypass;
  /// The Default Action to use. Possible values are `Allow` and `Deny`.
  final pulumi.Input<String> defaultAction;

  /// Creates a new [ManagedHardwareSecurityModuleNetworkAcls].
  /// [bypass] Specifies which traffic can bypass the network rules. Possible values are `AzureServices` and `None`.
  /// [defaultAction] The Default Action to use. Possible values are `Allow` and `Deny`.
  ManagedHardwareSecurityModuleNetworkAcls({
    required this.bypass,
    required this.defaultAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypass': bypass,
      'defaultAction': defaultAction,
    };
  }

  factory ManagedHardwareSecurityModuleNetworkAcls.fromMap(Map<String, dynamic> map) {
    return ManagedHardwareSecurityModuleNetworkAcls(
      bypass: (map['bypass'] as String).input(),
      defaultAction: (map['defaultAction'] as String).input(),
    );
  }
}

