// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SSLPolicy resources.
class SSLPolicyState {
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
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
  /// The list of features enabled in the SSL policy.
  final pulumi.Input<List<String>>? enabledFeatures;
  /// Fingerprint of this resource. A hash of the contents stored in this
  /// object. This field is used in optimistic locking.
  final pulumi.Input<String>? fingerprint;
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
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;

  /// Creates a new [SSLPolicyState].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [customFeatures] Profile specifies the set of SSL features that can be used by the
  /// [description] An optional description of this resource.
  /// [enabledFeatures] The list of features enabled in the SSL policy.
  /// [fingerprint] Fingerprint of this resource. A hash of the contents stored in this
  /// [minTlsVersion] The minimum version of SSL protocol that can be used by the clients
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [profile] Profile specifies the set of SSL features that can be used by the
  /// [project] The ID of the project in which the resource belongs.
  /// [selfLink] The URI of the created resource.
  SSLPolicyState({
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<List<String>>? customFeatures,
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? enabledFeatures,
    pulumi.Output<String>? fingerprint,
    pulumi.Output<String>? minTlsVersion,
    pulumi.Output<String>? name,
    pulumi.Output<String>? profile,
    pulumi.Output<String>? project,
    pulumi.Output<String>? selfLink,
  }) :
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      customFeatures = pulumi.Input.asOptionalInput<List<String>>(customFeatures),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabledFeatures = pulumi.Input.asOptionalInput<List<String>>(enabledFeatures),
      fingerprint = pulumi.Input.asOptionalInput<String>(fingerprint),
      minTlsVersion = pulumi.Input.asOptionalInput<String>(minTlsVersion),
      name = pulumi.Input.asOptionalInput<String>(name),
      profile = pulumi.Input.asOptionalInput<String>(profile),
      project = pulumi.Input.asOptionalInput<String>(project),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': ?creationTimestamp,
      'customFeatures': ?customFeatures,
      'description': ?description,
      'enabledFeatures': ?enabledFeatures,
      'fingerprint': ?fingerprint,
      'minTlsVersion': ?minTlsVersion,
      'name': ?name,
      'profile': ?profile,
      'project': ?project,
      'selfLink': ?selfLink,
    };
  }

  factory SSLPolicyState.fromMap(Map<String, dynamic> map) {
    return SSLPolicyState(
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      customFeatures: map['customFeatures'] == null ? null : pulumi.Output.create<List<String>>((map['customFeatures'] as List).cast<String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enabledFeatures: map['enabledFeatures'] == null ? null : pulumi.Output.create<List<String>>((map['enabledFeatures'] as List).cast<String>()),
      fingerprint: map['fingerprint'] == null ? null : pulumi.Output.create<String>(map['fingerprint'] as String),
      minTlsVersion: map['minTlsVersion'] == null ? null : pulumi.Output.create<String>(map['minTlsVersion'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      profile: map['profile'] == null ? null : pulumi.Output.create<String>(map['profile'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
    );
  }
}

