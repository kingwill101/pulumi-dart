// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGatewaySecurityPolicy.
class GetGatewaySecurityPolicyNetworksecurityV1beta1Result {
  /// The timestamp when the resource was created.
  final String? createTime;
  /// Optional. Free-text description of the resource.
  final String? description;
  /// Name of the resource. Name is of the form projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy} gateway_security_policy should match the pattern:(^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  final String? name;
  /// Optional. Name of a TLS Inspection Policy resource that defines how TLS inspection will be performed for any rule(s) which enables it.
  final String? tlsInspectionPolicy;
  /// The timestamp when the resource was updated.
  final String? updateTime;

  /// Creates a new [GetGatewaySecurityPolicyNetworksecurityV1beta1Result].
  /// [createTime] The timestamp when the resource was created.
  /// [description] Optional. Free-text description of the resource.
  /// [name] Name of the resource. Name is of the form projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy} gateway_security_policy should match the pattern:(^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  /// [tlsInspectionPolicy] Optional. Name of a TLS Inspection Policy resource that defines how TLS inspection will be performed for any rule(s) which enables it.
  /// [updateTime] The timestamp when the resource was updated.
  const GetGatewaySecurityPolicyNetworksecurityV1beta1Result({
    this.createTime,
    this.description,
    this.name,
    this.tlsInspectionPolicy,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'name': ?name,
      'tlsInspectionPolicy': ?tlsInspectionPolicy,
      'updateTime': ?updateTime,
    };
  }

  factory GetGatewaySecurityPolicyNetworksecurityV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetGatewaySecurityPolicyNetworksecurityV1beta1Result(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tlsInspectionPolicy: (() { final guardedValue = map['tlsInspectionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
