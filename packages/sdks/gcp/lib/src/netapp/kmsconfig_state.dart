// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Kmsconfig resources.
class KmsconfigState {
  /// Resource name of the KMS key to use. Only regional keys are supported. Format: `projects/{{project}}/locations/{{location}}/keyRings/{{key_ring}}/cryptoKeys/{{key}}`.
  final pulumi.Input<String>? cryptoKeyName;
  /// Description for the CMEK policy.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Access to the key needs to be granted. The instructions contain gcloud commands to run to grant access.
  /// To make the policy work, a CMEK policy check is required, which verifies key access.
  final pulumi.Input<String>? instructions;
  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the policy location. CMEK policies apply to the whole region.
  final pulumi.Input<String>? location;
  /// Name of the CMEK policy.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The Service account which needs to have access to the  provided KMS key.
  final pulumi.Input<String>? serviceAccount;

  /// Creates a new [KmsconfigState].
  /// [cryptoKeyName] Resource name of the KMS key to use. Only regional keys are supported. Format: `projects/{{project}}/locations/{{location}}/keyRings/{{key_ring}}/cryptoKeys/{{key}}`.
  /// [description] Description for the CMEK policy.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [instructions] Access to the key needs to be granted. The instructions contain gcloud commands to run to grant access.
  /// [labels] Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  /// [location] Name of the policy location. CMEK policies apply to the whole region.
  /// [name] Name of the CMEK policy.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [serviceAccount] The Service account which needs to have access to the  provided KMS key.
  KmsconfigState({
    pulumi.Output<String>? cryptoKeyName,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? instructions,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? serviceAccount,
  }) :
      cryptoKeyName = pulumi.Input.asOptionalInput<String>(cryptoKeyName),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      instructions = pulumi.Input.asOptionalInput<String>(instructions),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKeyName': ?cryptoKeyName,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'instructions': ?instructions,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'serviceAccount': ?serviceAccount,
    };
  }

  factory KmsconfigState.fromMap(Map<String, dynamic> map) {
    return KmsconfigState(
      cryptoKeyName: map['cryptoKeyName'] == null ? null : pulumi.Output.create<String>(map['cryptoKeyName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      instructions: map['instructions'] == null ? null : pulumi.Output.create<String>(map['instructions'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      serviceAccount: map['serviceAccount'] == null ? null : pulumi.Output.create<String>(map['serviceAccount'] as String),
    );
  }
}

