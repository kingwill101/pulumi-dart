// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OrganizationSettings resources.
class OrganizationSettingsState {
  /// If set to true, the _Default sink in newly created projects and folders will created in a disabled state. This can be used to automatically disable log storage if there is already an aggregated sink configured in the hierarchy. The _Default sink can be re-enabled manually if needed.
  final pulumi.Input<bool>? disableDefaultSink;
  /// The resource name for the configured Cloud KMS key.
  final pulumi.Input<String>? kmsKeyName;
  /// The service account that will be used by the Log Router to access your Cloud KMS key.
  final pulumi.Input<String>? kmsServiceAccountId;
  /// The service account for the given container. Sinks use this service account as their writerIdentity if no custom service account is provided.
  final pulumi.Input<String>? loggingServiceAccountId;
  /// The resource name of the settings.
  final pulumi.Input<String>? name;
  /// The organization for which to retrieve or configure settings.
  final pulumi.Input<String>? organization;
  /// The storage location that Cloud Logging will use to create new resources when a location is needed but not explicitly provided.
  final pulumi.Input<String>? storageLocation;

  /// Creates a new [OrganizationSettingsState].
  /// [disableDefaultSink] If set to true, the _Default sink in newly created projects and folders will created in a disabled state. This can be used to automatically disable log storage if there is already an aggregated sink configured in the hierarchy. The _Default sink can be re-enabled manually if needed.
  /// [kmsKeyName] The resource name for the configured Cloud KMS key.
  /// [kmsServiceAccountId] The service account that will be used by the Log Router to access your Cloud KMS key.
  /// [loggingServiceAccountId] The service account for the given container. Sinks use this service account as their writerIdentity if no custom service account is provided.
  /// [name] The resource name of the settings.
  /// [organization] The organization for which to retrieve or configure settings.
  /// [storageLocation] The storage location that Cloud Logging will use to create new resources when a location is needed but not explicitly provided.
  OrganizationSettingsState({
    pulumi.Output<bool>? disableDefaultSink,
    pulumi.Output<String>? kmsKeyName,
    pulumi.Output<String>? kmsServiceAccountId,
    pulumi.Output<String>? loggingServiceAccountId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? organization,
    pulumi.Output<String>? storageLocation,
  }) :
      disableDefaultSink = pulumi.Input.asOptionalInput<bool>(disableDefaultSink),
      kmsKeyName = pulumi.Input.asOptionalInput<String>(kmsKeyName),
      kmsServiceAccountId = pulumi.Input.asOptionalInput<String>(kmsServiceAccountId),
      loggingServiceAccountId = pulumi.Input.asOptionalInput<String>(loggingServiceAccountId),
      name = pulumi.Input.asOptionalInput<String>(name),
      organization = pulumi.Input.asOptionalInput<String>(organization),
      storageLocation = pulumi.Input.asOptionalInput<String>(storageLocation);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableDefaultSink': ?disableDefaultSink,
      'kmsKeyName': ?kmsKeyName,
      'kmsServiceAccountId': ?kmsServiceAccountId,
      'loggingServiceAccountId': ?loggingServiceAccountId,
      'name': ?name,
      'organization': ?organization,
      'storageLocation': ?storageLocation,
    };
  }

  factory OrganizationSettingsState.fromMap(Map<String, dynamic> map) {
    return OrganizationSettingsState(
      disableDefaultSink: map['disableDefaultSink'] == null ? null : pulumi.Output.create<bool>(map['disableDefaultSink'] as bool),
      kmsKeyName: map['kmsKeyName'] == null ? null : pulumi.Output.create<String>(map['kmsKeyName'] as String),
      kmsServiceAccountId: map['kmsServiceAccountId'] == null ? null : pulumi.Output.create<String>(map['kmsServiceAccountId'] as String),
      loggingServiceAccountId: map['loggingServiceAccountId'] == null ? null : pulumi.Output.create<String>(map['loggingServiceAccountId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      organization: map['organization'] == null ? null : pulumi.Output.create<String>(map['organization'] as String),
      storageLocation: map['storageLocation'] == null ? null : pulumi.Output.create<String>(map['storageLocation'] as String),
    );
  }
}

