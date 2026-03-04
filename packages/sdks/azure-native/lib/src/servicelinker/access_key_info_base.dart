// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The access key directly from target resource properties, which target service is Azure Resource, such as Microsoft.Storage
class AccessKeyInfoBase {
  /// Optional. Indicates how to configure authentication. If optInAllAuth, service linker configures authentication such as enabling identity on source resource and granting RBAC roles. If optOutAllAuth, opt out authentication setup. Default is optInAllAuth.
  final pulumi.Input<String>? authMode;

  /// The authentication type.
  /// Expected value is 'accessKey'.
  final pulumi.Input<String> authType;

  /// Permissions of the accessKey. `Read` and `Write` are for Azure Cosmos DB and Azure App Configuration, `Listen`, `Send` and `Manage` are for Azure Event Hub and Azure Service Bus.
  final pulumi.Input<List<String>>? permissions;

  /// Creates a new [AccessKeyInfoBase].
  /// [authMode] Optional. Indicates how to configure authentication. If optInAllAuth, service linker configures authentication such as enabling identity on source resource and granting RBAC roles. If optOutAllAuth, opt out authentication setup. Default is optInAllAuth.
  /// [authType] The authentication type.
  /// [permissions] Permissions of the accessKey. `Read` and `Write` are for Azure Cosmos DB and Azure App Configuration, `Listen`, `Send` and `Manage` are for Azure Event Hub and Azure Service Bus.
  AccessKeyInfoBase({this.authMode, required this.authType, this.permissions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMode': ?authMode,
      'authType': authType,
      'permissions': ?permissions,
    };
  }

  factory AccessKeyInfoBase.fromMap(Map<String, dynamic> map) {
    return AccessKeyInfoBase(
      authMode: (() {
        final guardedValue = map['authMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      authType: pulumi.Input.fromValue(map['authType'] as String),
      permissions: (() {
        final guardedValue = map['permissions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
