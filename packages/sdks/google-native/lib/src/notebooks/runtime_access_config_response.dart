// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the login configuration for Runtime
class RuntimeAccessConfigResponse {
  /// The type of access mode this instance.
  final pulumi.Input<String> accessType;
  /// The proxy endpoint that is used to access the runtime.
  final pulumi.Input<String> proxyUri;
  /// The owner of this runtime after creation. Format: `alias@example.com` Currently supports one owner only.
  final pulumi.Input<String> runtimeOwner;

  /// Creates a new [RuntimeAccessConfigResponse].
  /// [accessType] The type of access mode this instance.
  /// [proxyUri] The proxy endpoint that is used to access the runtime.
  /// [runtimeOwner] The owner of this runtime after creation. Format: `alias@example.com` Currently supports one owner only.
  const RuntimeAccessConfigResponse({
    required this.accessType,
    required this.proxyUri,
    required this.runtimeOwner,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessType': accessType,
      'proxyUri': proxyUri,
      'runtimeOwner': runtimeOwner,
    };
  }

  factory RuntimeAccessConfigResponse.fromMap(Map<String, dynamic> map) {
    return RuntimeAccessConfigResponse(
      accessType: pulumi.Input.fromValue(map['accessType'] as String),
      proxyUri: pulumi.Input.fromValue(map['proxyUri'] as String),
      runtimeOwner: pulumi.Input.fromValue(map['runtimeOwner'] as String),
    );
  }
}

