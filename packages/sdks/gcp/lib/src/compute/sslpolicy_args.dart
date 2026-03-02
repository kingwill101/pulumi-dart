// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_s_slpolicy_sslpolicy_args_doc}
/// The set of arguments for SSLPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_s_slpolicy_sslpolicy_args_doc}
class SSLPolicyArgs {
  /// Profile specifies the set of SSL features that can be used by the
  /// load balancer when negotiating SSL with clients. This can be one of
  /// `COMPATIBLE`, `MODERN`, `RESTRICTED`, or `CUSTOM`. If using `CUSTOM`,
  /// the set of SSL features to enable must be specified in the
  /// `customFeatures` field.
  /// See the [official documentation](https://cloud.google.com/compute/docs/load-balancing/ssl-policies#profilefeaturesupport)
  /// for which ciphers are available to use. **Note**: this argument
  /// *must* be present when using the `CUSTOM` profile. This argument
  /// *must not* be present when using any other profile.
  final pulumi.Input<List<String>>? customFeatures;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// The minimum version of SSL protocol that can be used by the clients
  /// to establish a connection with the load balancer. When set to`
  /// TLS_1_3`, the profile field must be set to `RESTRICTED`.
  /// Default value is `TLS_1_0`.
  /// Possible values are: `TLS_1_0`, `TLS_1_1`, `TLS_1_2`, `TLS_1_3`.
  final pulumi.Input<String>? minTlsVersion;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// Profile specifies the set of SSL features that can be used by the
  /// load balancer when negotiating SSL with clients. If using `CUSTOM`,
  /// the set of SSL features to enable must be specified in the
  /// `customFeatures` field.
  /// See the [official documentation](https://cloud.google.com/compute/docs/load-balancing/ssl-policies#profilefeaturesupport)
  /// for information on what cipher suites each profile provides. If
  /// `CUSTOM` is used, the `custom_features` attribute **must be set**.
  /// If set to `FIPS_202205`, `minTlsVersion` must also be set to
  /// `TLS_1_2`.
  /// Default value is `COMPATIBLE`.
  /// Possible values are: `COMPATIBLE`, `MODERN`, `RESTRICTED`, `CUSTOM`, `FIPS_202205`.
  final pulumi.Input<String>? profile;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [SSLPolicyArgs].
  /// [customFeatures] Profile specifies the set of SSL features that can be used by the
  /// [description] An optional description of this resource.
  /// [minTlsVersion] The minimum version of SSL protocol that can be used by the clients
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [profile] Profile specifies the set of SSL features that can be used by the
  /// [project] The ID of the project in which the resource belongs.
  SSLPolicyArgs({
    this.customFeatures,
    this.description,
    this.minTlsVersion,
    this.name,
    this.profile,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customFeatures': ?customFeatures,
      'description': ?description,
      'minTlsVersion': ?minTlsVersion,
      'name': ?name,
      'profile': ?profile,
      'project': ?project,
    };
  }

  factory SSLPolicyArgs.fromMap(Map<String, dynamic> map) {
    return SSLPolicyArgs(
      customFeatures: map['customFeatures'] == null ? null : ((map['customFeatures']! as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      minTlsVersion: map['minTlsVersion'] == null ? null : (map['minTlsVersion']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      profile: map['profile'] == null ? null : (map['profile']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

