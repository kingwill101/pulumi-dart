// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_inspection_policy_min_tls_version.dart';
import 'tls_inspection_policy_tls_feature_profile.dart';

/// {@template pulumi_networksecurity_v1_tls_inspection_policy_args_doc}
/// The set of arguments for TlsInspectionPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1_tls_inspection_policy_args_doc}
class TlsInspectionPolicyArgs {
  /// A CA pool resource used to issue interception certificates. The CA pool string has a relative resource path following the form "projects/{project}/locations/{location}/caPools/{ca_pool}".
  final pulumi.Input<String> caPool;
  /// Optional. List of custom TLS cipher suites selected. This field is valid only if the selected tls_feature_profile is CUSTOM. The compute.SslPoliciesService.ListAvailableFeatures method returns the set of features that can be specified in this list. Note that Secure Web Proxy does not yet honor this field.
  final pulumi.Input<List<String>>? customTlsFeatures;
  /// Optional. Free-text description of the resource.
  final pulumi.Input<String>? description;
  /// Optional. If FALSE (the default), use our default set of public CAs in addition to any CAs specified in trust_config. These public CAs are currently based on the Mozilla Root Program and are subject to change over time. If TRUE, do not accept our default set of public CAs. Only CAs specified in trust_config will be accepted. This defaults to FALSE (use public CAs in addition to trust_config) for backwards compatibility, but trusting public root CAs is *not recommended* unless the traffic in question is outbound to public web servers. When possible, prefer setting this to "false" and explicitly specifying trusted CAs and certificates in a TrustConfig. Note that Secure Web Proxy does not yet honor this field.
  final pulumi.Input<bool>? excludePublicCaSet;
  final pulumi.Input<String>? location;
  /// Optional. Minimum TLS version that the firewall should use when negotiating connections with both clients and servers. If this is not set, then the default value is to allow the broadest set of clients and servers (TLS 1.0 or higher). Setting this to more restrictive values may improve security, but may also prevent the firewall from connecting to some clients or servers. Note that Secure Web Proxy does not yet honor this field.
  final pulumi.Input<TlsInspectionPolicyMinTlsVersion>? minTlsVersion;
  /// Name of the resource. Name is of the form projects/{project}/locations/{location}/tlsInspectionPolicies/{tls_inspection_policy} tls_inspection_policy should match the pattern:(^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Optional. The selected Profile. If this is not set, then the default value is to allow the broadest set of clients and servers ("PROFILE_COMPATIBLE"). Setting this to more restrictive values may improve security, but may also prevent the TLS inspection proxy from connecting to some clients or servers. Note that Secure Web Proxy does not yet honor this field.
  final pulumi.Input<TlsInspectionPolicyTlsFeatureProfile>? tlsFeatureProfile;
  /// Required. Short name of the TlsInspectionPolicy resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "tls_inspection_policy1".
  final pulumi.Input<String> tlsInspectionPolicyId;
  /// Optional. A TrustConfig resource used when making a connection to the TLS server. This is a relative resource path following the form "projects/{project}/locations/{location}/trustConfigs/{trust_config}". This is necessary to intercept TLS connections to servers with certificates signed by a private CA or self-signed certificates. Note that Secure Web Proxy does not yet honor this field.
  final pulumi.Input<String>? trustConfig;

  /// Creates a new [TlsInspectionPolicyArgs].
  /// [caPool] A CA pool resource used to issue interception certificates. The CA pool string has a relative resource path following the form "projects/{project}/locations/{location}/caPools/{ca_pool}".
  /// [customTlsFeatures] Optional. List of custom TLS cipher suites selected. This field is valid only if the selected tls_feature_profile is CUSTOM. The compute.SslPoliciesService.ListAvailableFeatures method returns the set of features that can be specified in this list. Note that Secure Web Proxy does not yet honor this field.
  /// [description] Optional. Free-text description of the resource.
  /// [excludePublicCaSet] Optional. If FALSE (the default), use our default set of public CAs in addition to any CAs specified in trust_config. These public CAs are currently based on the Mozilla Root Program and are subject to change over time. If TRUE, do not accept our default set of public CAs. Only CAs specified in trust_config will be accepted. This defaults to FALSE (use public CAs in addition to trust_config) for backwards compatibility, but trusting public root CAs is *not recommended* unless the traffic in question is outbound to public web servers. When possible, prefer setting this to "false" and explicitly specifying trusted CAs and certificates in a TrustConfig. Note that Secure Web Proxy does not yet honor this field.
  /// [location] Optional.
  /// [minTlsVersion] Optional. Minimum TLS version that the firewall should use when negotiating connections with both clients and servers. If this is not set, then the default value is to allow the broadest set of clients and servers (TLS 1.0 or higher). Setting this to more restrictive values may improve security, but may also prevent the firewall from connecting to some clients or servers. Note that Secure Web Proxy does not yet honor this field.
  /// [name] Name of the resource. Name is of the form projects/{project}/locations/{location}/tlsInspectionPolicies/{tls_inspection_policy} tls_inspection_policy should match the pattern:(^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  /// [project] Optional.
  /// [tlsFeatureProfile] Optional. The selected Profile. If this is not set, then the default value is to allow the broadest set of clients and servers ("PROFILE_COMPATIBLE"). Setting this to more restrictive values may improve security, but may also prevent the TLS inspection proxy from connecting to some clients or servers. Note that Secure Web Proxy does not yet honor this field.
  /// [tlsInspectionPolicyId] Required. Short name of the TlsInspectionPolicy resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "tls_inspection_policy1".
  /// [trustConfig] Optional. A TrustConfig resource used when making a connection to the TLS server. This is a relative resource path following the form "projects/{project}/locations/{location}/trustConfigs/{trust_config}". This is necessary to intercept TLS connections to servers with certificates signed by a private CA or self-signed certificates. Note that Secure Web Proxy does not yet honor this field.
  TlsInspectionPolicyArgs({
    required this.caPool,
    this.customTlsFeatures,
    this.description,
    this.excludePublicCaSet,
    this.location,
    this.minTlsVersion,
    this.name,
    this.project,
    this.tlsFeatureProfile,
    required this.tlsInspectionPolicyId,
    this.trustConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caPool': caPool,
      'customTlsFeatures': ?customTlsFeatures,
      'description': ?description,
      'excludePublicCaSet': ?excludePublicCaSet,
      'location': ?location,
      'minTlsVersion': ?pulumi.Input.mapOptionalInputValue<TlsInspectionPolicyMinTlsVersion, String>(minTlsVersion, (value) => value.value),
      'name': ?name,
      'project': ?project,
      'tlsFeatureProfile': ?pulumi.Input.mapOptionalInputValue<TlsInspectionPolicyTlsFeatureProfile, String>(tlsFeatureProfile, (value) => value.value),
      'tlsInspectionPolicyId': tlsInspectionPolicyId,
      'trustConfig': ?trustConfig,
    };
  }

  factory TlsInspectionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return TlsInspectionPolicyArgs(
      caPool: (map['caPool'] as String).input(),
      customTlsFeatures: map['customTlsFeatures'] == null ? null : ((map['customTlsFeatures']! as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      excludePublicCaSet: map['excludePublicCaSet'] == null ? null : (map['excludePublicCaSet']! as bool).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      minTlsVersion: map['minTlsVersion'] == null ? null : (TlsInspectionPolicyMinTlsVersion.fromValue(map['minTlsVersion']! as String)).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      tlsFeatureProfile: map['tlsFeatureProfile'] == null ? null : (TlsInspectionPolicyTlsFeatureProfile.fromValue(map['tlsFeatureProfile']! as String)).input(),
      tlsInspectionPolicyId: (map['tlsInspectionPolicyId'] as String).input(),
      trustConfig: map['trustConfig'] == null ? null : (map['trustConfig']! as String).input(),
    );
  }
}

