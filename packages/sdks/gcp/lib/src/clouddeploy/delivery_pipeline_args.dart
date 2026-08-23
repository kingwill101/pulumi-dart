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
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Description of the `DeliveryPipeline`. Max length is 255 characters.
  final pulumi.Input<String>? description;
  /// Labels are attributes that can be set and used by both the user and by Google Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 128 bytes.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [description] Description of the `DeliveryPipeline`. Max length is 255 characters.
  /// [labels] Labels are attributes that can be set and used by both the user and by Google Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 128 bytes.
  /// [location] The location for the resource
  /// [name] Name of the `DeliveryPipeline`. Format is `a-z?`.
  /// [project] The project for the resource
  /// [serialPipeline] SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`.
  /// [suspended] When suspended, no new releases or rollouts can be created, but in-progress ones will complete.
  const DeliveryPipelineArgs({
    this.annotations,
    this.deletionPolicy,
    this.description,
    this.labels,
    required this.location,
    this.name,
    this.project,
    this.serialPipeline,
    this.suspended,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'deletionPolicy': ?deletionPolicy,
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
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serialPipeline: (() { final guardedValue = map['serialPipeline']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryPipelineSerialPipeline.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      suspended: (() { final guardedValue = map['suspended']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
