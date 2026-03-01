// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_serial_pipeline.dart';

/// {@template pulumi_clouddeploy_delivery_pipeline_delivery_pipeline_args_doc}
/// The set of arguments for DeliveryPipeline.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_delivery_pipeline_delivery_pipeline_args_doc}
class DeliveryPipelineArgs {
  /// User annotations. These attributes can only be set and used by the user, and not by Google Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Description of the `DeliveryPipeline`. Max length is 255 characters.
  final pulumi.Input<String>? description;
  /// Labels are attributes that can be set and used by both the user and by Google Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location for the resource
  final pulumi.Input<String> location;
  /// Name of the `DeliveryPipeline`. Format is `a-z?`.
  ///
  ///
  ///
  /// - - -
  final pulumi.Input<String>? name;
  /// The project for the resource
  final pulumi.Input<String>? project;
  /// SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`.
  final pulumi.Input<DeliveryPipelineSerialPipeline>? serialPipeline;
  /// When suspended, no new releases or rollouts can be created, but in-progress ones will complete.
  final pulumi.Input<bool>? suspended;

  /// Creates a new [DeliveryPipelineArgs].
  /// [annotations] User annotations. These attributes can only be set and used by the user, and not by Google Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  /// [description] Description of the `DeliveryPipeline`. Max length is 255 characters.
  /// [labels] Labels are attributes that can be set and used by both the user and by Google Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  /// [location] The location for the resource
  /// [name] Name of the `DeliveryPipeline`. Format is `a-z?`.
  /// [project] The project for the resource
  /// [serialPipeline] SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`.
  /// [suspended] When suspended, no new releases or rollouts can be created, but in-progress ones will complete.
  DeliveryPipelineArgs({
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<DeliveryPipelineSerialPipeline>? serialPipeline,
    pulumi.Output<bool>? suspended,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      description = pulumi.Input.asOptionalInput<String>(description),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      serialPipeline = pulumi.Input.asOptionalInput<DeliveryPipelineSerialPipeline>(serialPipeline),
      suspended = pulumi.Input.asOptionalInput<bool>(suspended);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'description': ?description,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'project': ?project,
      'serialPipeline': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipeline, Map<String, dynamic>>(serialPipeline, (value) => value.toMap()),
      'suspended': ?suspended,
    };
  }

  factory DeliveryPipelineArgs.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineArgs(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serialPipeline: map['serialPipeline'] == null ? null : pulumi.Output.create<DeliveryPipelineSerialPipeline>(DeliveryPipelineSerialPipeline.fromMap((map['serialPipeline'] as Map).cast<String, dynamic>())),
      suspended: map['suspended'] == null ? null : pulumi.Output.create<bool>(map['suspended'] as bool),
    );
  }
}

