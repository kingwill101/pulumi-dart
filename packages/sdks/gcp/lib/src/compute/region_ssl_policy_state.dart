// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RegionSslPolicy resources.
class RegionSslPolicyState {
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;

  /// A list of features enabled when the selected profile is CUSTOM. The
  /// method returns the set of features that can be specified in this
  /// list. This field must be empty if the profile is not CUSTOM.
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
  /// to establish a connection with the load balancer. When set to
  /// `TLS_1_3`, the profile field must be set to `RESTRICTED`.
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

  /// The region where the regional SSL policy resides.
  final pulumi.Input<String>? region;

  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;

  /// Creates a new [RegionSslPolicyState].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [customFeatures] A list of features enabled when the selected profile is CUSTOM. The
  /// [description] An optional description of this resource.
  /// [enabledFeatures] The list of features enabled in the SSL policy.
  /// [fingerprint] Fingerprint of this resource. A hash of the contents stored in this
  /// [minTlsVersion] The minimum version of SSL protocol that can be used by the clients
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [profile] Profile specifies the set of SSL features that can be used by the
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region where the regional SSL policy resides.
  /// [selfLink] The URI of the created resource.
  RegionSslPolicyState({
    this.creationTimestamp,
    this.customFeatures,
    this.description,
    this.enabledFeatures,
    this.fingerprint,
    this.minTlsVersion,
    this.name,
    this.profile,
    this.project,
    this.region,
    this.selfLink,
  });

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
      'region': ?region,
      'selfLink': ?selfLink,
    };
  }

  factory RegionSslPolicyState.fromMap(Map<String, dynamic> map) {
    return RegionSslPolicyState(
      creationTimestamp: (() {
        final guardedValue = map['creationTimestamp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customFeatures: (() {
        final guardedValue = map['customFeatures'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabledFeatures: (() {
        final guardedValue = map['enabledFeatures'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      fingerprint: (() {
        final guardedValue = map['fingerprint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      minTlsVersion: (() {
        final guardedValue = map['minTlsVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      profile: (() {
        final guardedValue = map['profile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      selfLink: (() {
        final guardedValue = map['selfLink'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
