// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTlsInspectionPolicy.
class GetTlsInspectionPolicyResult {
  /// A CA pool resource used to issue interception certificates. The CA pool string has a relative resource path following the form "projects/{project}/locations/{location}/caPools/{ca_pool}".
  final String? caPool;
  /// The timestamp when the resource was created.
  final String? createTime;
  /// Optional. List of custom TLS cipher suites selected. This field is valid only if the selected tls_feature_profile is CUSTOM. The compute.SslPoliciesService.ListAvailableFeatures method returns the set of features that can be specified in this list. Note that Secure Web Proxy does not yet honor this field.
  final List<String>? customTlsFeatures;
  /// Optional. Free-text description of the resource.
  final String? description;
  /// Optional. If FALSE (the default), use our default set of public CAs in addition to any CAs specified in trust_config. These public CAs are currently based on the Mozilla Root Program and are subject to change over time. If TRUE, do not accept our default set of public CAs. Only CAs specified in trust_config will be accepted. This defaults to FALSE (use public CAs in addition to trust_config) for backwards compatibility, but trusting public root CAs is *not recommended* unless the traffic in question is outbound to public web servers. When possible, prefer setting this to "false" and explicitly specifying trusted CAs and certificates in a TrustConfig. Note that Secure Web Proxy does not yet honor this field.
  final bool? excludePublicCaSet;
  /// Optional. Minimum TLS version that the firewall should use when negotiating connections with both clients and servers. If this is not set, then the default value is to allow the broadest set of clients and servers (TLS 1.0 or higher). Setting this to more restrictive values may improve security, but may also prevent the firewall from connecting to some clients or servers. Note that Secure Web Proxy does not yet honor this field.
  final String? minTlsVersion;
  /// Name of the resource. Name is of the form projects/{project}/locations/{location}/tlsInspectionPolicies/{tls_inspection_policy} tls_inspection_policy should match the pattern:(^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  final String? name;
  /// Optional. The selected Profile. If this is not set, then the default value is to allow the broadest set of clients and servers ("PROFILE_COMPATIBLE"). Setting this to more restrictive values may improve security, but may also prevent the TLS inspection proxy from connecting to some clients or servers. Note that Secure Web Proxy does not yet honor this field.
  final String? tlsFeatureProfile;
  /// Optional. A TrustConfig resource used when making a connection to the TLS server. This is a relative resource path following the form "projects/{project}/locations/{location}/trustConfigs/{trust_config}". This is necessary to intercept TLS connections to servers with certificates signed by a private CA or self-signed certificates. Note that Secure Web Proxy does not yet honor this field.
  final String? trustConfig;
  /// The timestamp when the resource was updated.
  final String? updateTime;

  /// Creates a new [GetTlsInspectionPolicyResult].
  /// [caPool] A CA pool resource used to issue interception certificates. The CA pool string has a relative resource path following the form "projects/{project}/locations/{location}/caPools/{ca_pool}".
  /// [createTime] The timestamp when the resource was created.
  /// [customTlsFeatures] Optional. List of custom TLS cipher suites selected. This field is valid only if the selected tls_feature_profile is CUSTOM. The compute.SslPoliciesService.ListAvailableFeatures method returns the set of features that can be specified in this list. Note that Secure Web Proxy does not yet honor this field.
  /// [description] Optional. Free-text description of the resource.
  /// [excludePublicCaSet] Optional. If FALSE (the default), use our default set of public CAs in addition to any CAs specified in trust_config. These public CAs are currently based on the Mozilla Root Program and are subject to change over time. If TRUE, do not accept our default set of public CAs. Only CAs specified in trust_config will be accepted. This defaults to FALSE (use public CAs in addition to trust_config) for backwards compatibility, but trusting public root CAs is *not recommended* unless the traffic in question is outbound to public web servers. When possible, prefer setting this to "false" and explicitly specifying trusted CAs and certificates in a TrustConfig. Note that Secure Web Proxy does not yet honor this field.
  /// [minTlsVersion] Optional. Minimum TLS version that the firewall should use when negotiating connections with both clients and servers. If this is not set, then the default value is to allow the broadest set of clients and servers (TLS 1.0 or higher). Setting this to more restrictive values may improve security, but may also prevent the firewall from connecting to some clients or servers. Note that Secure Web Proxy does not yet honor this field.
  /// [name] Name of the resource. Name is of the form projects/{project}/locations/{location}/tlsInspectionPolicies/{tls_inspection_policy} tls_inspection_policy should match the pattern:(^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  /// [tlsFeatureProfile] Optional. The selected Profile. If this is not set, then the default value is to allow the broadest set of clients and servers ("PROFILE_COMPATIBLE"). Setting this to more restrictive values may improve security, but may also prevent the TLS inspection proxy from connecting to some clients or servers. Note that Secure Web Proxy does not yet honor this field.
  /// [trustConfig] Optional. A TrustConfig resource used when making a connection to the TLS server. This is a relative resource path following the form "projects/{project}/locations/{location}/trustConfigs/{trust_config}". This is necessary to intercept TLS connections to servers with certificates signed by a private CA or self-signed certificates. Note that Secure Web Proxy does not yet honor this field.
  /// [updateTime] The timestamp when the resource was updated.
  const GetTlsInspectionPolicyResult({
    this.caPool,
    this.createTime,
    this.customTlsFeatures,
    this.description,
    this.excludePublicCaSet,
    this.minTlsVersion,
    this.name,
    this.tlsFeatureProfile,
    this.trustConfig,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caPool': ?caPool,
      'createTime': ?createTime,
      'customTlsFeatures': ?customTlsFeatures,
      'description': ?description,
      'excludePublicCaSet': ?excludePublicCaSet,
      'minTlsVersion': ?minTlsVersion,
      'name': ?name,
      'tlsFeatureProfile': ?tlsFeatureProfile,
      'trustConfig': ?trustConfig,
      'updateTime': ?updateTime,
    };
  }

  factory GetTlsInspectionPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetTlsInspectionPolicyResult(
      caPool: (() { final guardedValue = map['caPool']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customTlsFeatures: (() { final guardedValue = map['customTlsFeatures']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      excludePublicCaSet: (() { final guardedValue = map['excludePublicCaSet']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      minTlsVersion: (() { final guardedValue = map['minTlsVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tlsFeatureProfile: (() { final guardedValue = map['tlsFeatureProfile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trustConfig: (() { final guardedValue = map['trustConfig']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
