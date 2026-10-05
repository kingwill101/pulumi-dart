// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGateway.
class GetGatewayResult {
  /// Resource name of the API Config for this Gateway. Format: projects/{project}/locations/global/apis/{api}/configs/{apiConfig}
  final String? apiConfig;
  /// Created time.
  final String? createTime;
  /// The default API Gateway host name of the form `{gateway_id}-{hash}.{region_code}.gateway.dev`.
  final String? defaultHostname;
  /// Optional. Display name.
  final String? displayName;
  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final Map<String, String>? labels;
  /// Resource name of the Gateway. Format: projects/{project}/locations/{location}/gateways/{gateway}
  final String? name;
  /// The current state of the Gateway.
  final String? state;
  /// Updated time.
  final String? updateTime;

  /// Creates a new [GetGatewayResult].
  /// [apiConfig] Resource name of the API Config for this Gateway. Format: projects/{project}/locations/global/apis/{api}/configs/{apiConfig}
  /// [createTime] Created time.
  /// [defaultHostname] The default API Gateway host name of the form `{gateway_id}-{hash}.{region_code}.gateway.dev`.
  /// [displayName] Optional. Display name.
  /// [labels] Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  /// [name] Resource name of the Gateway. Format: projects/{project}/locations/{location}/gateways/{gateway}
  /// [state] The current state of the Gateway.
  /// [updateTime] Updated time.
  const GetGatewayResult({
    this.apiConfig,
    this.createTime,
    this.defaultHostname,
    this.displayName,
    this.labels,
    this.name,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiConfig': ?apiConfig,
      'createTime': ?createTime,
      'defaultHostname': ?defaultHostname,
      'displayName': ?displayName,
      'labels': ?labels,
      'name': ?name,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory GetGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetGatewayResult(
      apiConfig: (() { final guardedValue = map['apiConfig']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultHostname: (() { final guardedValue = map['defaultHostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
