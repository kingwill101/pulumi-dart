// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_ssl_policy_min_tls_version.dart';
import 'region_ssl_policy_profile.dart';
import 'server_tls_settings.dart';

/// {@template pulumi_compute_alpha_region_ssl_policy_args_doc}
/// The set of arguments for RegionSslPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_region_ssl_policy_args_doc}
class RegionSslPolicyArgs {
  /// A list of features enabled when the selected profile is CUSTOM. The method returns the set of features that can be specified in this list. This field must be empty if the profile is not CUSTOM.
  final pulumi.Input<List<String>>? customFeatures;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// The minimum version of SSL protocol that can be used by the clients to establish a connection with the load balancer. This can be one of TLS_1_0, TLS_1_1, TLS_1_2.
  final pulumi.Input<RegionSslPolicyMinTlsVersion>? minTlsVersion;
  /// Name of the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// Profile specifies the set of SSL features that can be used by the load balancer when negotiating SSL with clients. This can be one of COMPATIBLE, MODERN, RESTRICTED, or CUSTOM. If using CUSTOM, the set of SSL features to enable must be specified in the customFeatures field.
  final pulumi.Input<RegionSslPolicyProfile>? profile;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Security settings for the proxy. This field is only applicable to a global backend service with the loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  final pulumi.Input<ServerTlsSettings>? tlsSettings;

  /// Creates a new [RegionSslPolicyArgs].
  /// [customFeatures] A list of features enabled when the selected profile is CUSTOM. The method returns the set of features that can be specified in this list. This field must be empty if the profile is not CUSTOM.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [minTlsVersion] The minimum version of SSL protocol that can be used by the clients to establish a connection with the load balancer. This can be one of TLS_1_0, TLS_1_1, TLS_1_2.
  /// [name] Name of the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [profile] Profile specifies the set of SSL features that can be used by the load balancer when negotiating SSL with clients. This can be one of COMPATIBLE, MODERN, RESTRICTED, or CUSTOM. If using CUSTOM, the set of SSL features to enable must be specified in the customFeatures field.
  /// [project] Optional.
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [tlsSettings] Security settings for the proxy. This field is only applicable to a global backend service with the loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  RegionSslPolicyArgs({
    this.customFeatures,
    this.description,
    this.minTlsVersion,
    this.name,
    this.profile,
    this.project,
    required this.region,
    this.requestId,
    this.tlsSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customFeatures': ?customFeatures,
      'description': ?description,
      'minTlsVersion': ?pulumi.Input.mapOptionalInputValue<RegionSslPolicyMinTlsVersion, String>(minTlsVersion, (value) => value.value),
      'name': ?name,
      'profile': ?pulumi.Input.mapOptionalInputValue<RegionSslPolicyProfile, String>(profile, (value) => value.value),
      'project': ?project,
      'region': region,
      'requestId': ?requestId,
      'tlsSettings': ?pulumi.Input.mapOptionalInputValue<ServerTlsSettings, Map<String, dynamic>>(tlsSettings, (value) => value.toMap()),
    };
  }

  factory RegionSslPolicyArgs.fromMap(Map<String, dynamic> map) {
    return RegionSslPolicyArgs(
      customFeatures: map['customFeatures'] == null ? null : ((map['customFeatures'] as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      minTlsVersion: map['minTlsVersion'] == null ? null : (RegionSslPolicyMinTlsVersion.fromValue(map['minTlsVersion'] as String)).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      profile: map['profile'] == null ? null : (RegionSslPolicyProfile.fromValue(map['profile'] as String)).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      region: (map['region'] as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId'] as String).input(),
      tlsSettings: map['tlsSettings'] == null ? null : (ServerTlsSettings.fromMap((map['tlsSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

