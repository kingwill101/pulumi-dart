// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BackendAuthenticationConfig resources.
class BackendAuthenticationConfigState {
  /// Reference to a Certificate resource from the certificatemanager.googleapis.com namespace.
  /// Used by a BackendService to negotiate mTLS when the backend connection uses TLS and the backend requests a client certificate. Must have a CLIENT_AUTH scope.
  final pulumi.Input<String>? clientCertificate;
  /// Time the BackendAuthenticationConfig was created in UTC.
  final pulumi.Input<String>? createTime;
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Set of label tags associated with the BackendAuthenticationConfig resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the backend authentication config.
  /// The default value is `global`.
  final pulumi.Input<String>? location;
  /// Name of the BackendAuthenticationConfig resource.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Reference to a TrustConfig resource from the certificatemanager.googleapis.com namespace.
  /// A BackendService uses the chain of trust represented by this TrustConfig, if specified, to validate the server certificates presented by the backend. Required unless wellKnownRoots is set to PUBLIC_ROOTS.
  final pulumi.Input<String>? trustConfig;
  /// Time the BackendAuthenticationConfig was updated in UTC.
  final pulumi.Input<String>? updateTime;
  /// Well known roots to use for server certificate validation. If set to NONE, the BackendService will only validate server certificates against roots specified in TrustConfig.
  /// If set to PUBLIC_ROOTS, the BackendService uses a set of well-known public roots, in addition to any roots specified in the trustConfig field, when validating the server certificates presented by the backend.
  /// Validation with these roots is only considered when the TlsSettings.sni field in the BackendService is set. The well-known roots are a set of root CAs managed by Google. CAs in this set can be added or removed without notice.
  /// Possible values are: `NONE`, `PUBLIC_ROOTS`.
  final pulumi.Input<String>? wellKnownRoots;

  /// Creates a new [BackendAuthenticationConfigState].
  /// [clientCertificate] Reference to a Certificate resource from the certificatemanager.googleapis.com namespace.
  /// [createTime] Time the BackendAuthenticationConfig was created in UTC.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Set of label tags associated with the BackendAuthenticationConfig resource.
  /// [location] The location of the backend authentication config.
  /// [name] Name of the BackendAuthenticationConfig resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [trustConfig] Reference to a TrustConfig resource from the certificatemanager.googleapis.com namespace.
  /// [updateTime] Time the BackendAuthenticationConfig was updated in UTC.
  /// [wellKnownRoots] Well known roots to use for server certificate validation. If set to NONE, the BackendService will only validate server certificates against roots specified in TrustConfig.
  BackendAuthenticationConfigState({
    pulumi.Output<String>? clientCertificate,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? trustConfig,
    pulumi.Output<String>? updateTime,
    pulumi.Output<String>? wellKnownRoots,
  }) :
      clientCertificate = pulumi.Input.asOptionalInput<String>(clientCertificate),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      trustConfig = pulumi.Input.asOptionalInput<String>(trustConfig),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      wellKnownRoots = pulumi.Input.asOptionalInput<String>(wellKnownRoots);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCertificate': ?clientCertificate,
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'trustConfig': ?trustConfig,
      'updateTime': ?updateTime,
      'wellKnownRoots': ?wellKnownRoots,
    };
  }

  factory BackendAuthenticationConfigState.fromMap(Map<String, dynamic> map) {
    return BackendAuthenticationConfigState(
      clientCertificate: map['clientCertificate'] == null ? null : pulumi.Output.create<String>(map['clientCertificate'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      trustConfig: map['trustConfig'] == null ? null : pulumi.Output.create<String>(map['trustConfig'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      wellKnownRoots: map['wellKnownRoots'] == null ? null : pulumi.Output.create<String>(map['wellKnownRoots'] as String),
    );
  }
}

