// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_build_config.dart';
import 'function_event_trigger.dart';
import 'function_service_config.dart';

/// {@template pulumi_cloudfunctionsv2_function_function_args_doc}
/// The set of arguments for Function.
/// {@endtemplate}
/// {@macro pulumi_cloudfunctionsv2_function_function_args_doc}
class FunctionArgs {
  /// Describes the Build step of the function that builds a container
  /// from the given source.
  /// Structure is documented below.
  final pulumi.Input<FunctionBuildConfig?>? buildConfig;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// User-provided description of a function.
  final pulumi.Input<String?>? description;
  /// An Eventarc trigger managed by Google Cloud Functions that fires events in
  /// response to a condition in another service.
  /// Structure is documented below.
  final pulumi.Input<FunctionEventTrigger?>? eventTrigger;
  /// Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources.
  /// It must match the pattern projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}.
  final pulumi.Input<String?>? kmsKeyName;
  /// A set of key/value label pairs associated with this Cloud Function.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location of this cloud function.
  final pulumi.Input<String> location;
  /// A user-defined name of the function. Function names must
  /// be unique globally and match pattern `projects/*/locations/*/functions/*`.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Describes the Service being deployed.
  /// Structure is documented below.
  final pulumi.Input<FunctionServiceConfig?>? serviceConfig;

  /// Creates a new [FunctionArgs].
  /// [buildConfig] Describes the Build step of the function that builds a container
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] User-provided description of a function.
  /// [eventTrigger] An Eventarc trigger managed by Google Cloud Functions that fires events in
  /// [kmsKeyName] Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources.
  /// [labels] A set of key/value label pairs associated with this Cloud Function.
  /// [location] The location of this cloud function.
  /// [name] A user-defined name of the function. Function names must
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceConfig] Describes the Service being deployed.
  const FunctionArgs({
    this.buildConfig,
    this.deletionPolicy,
    this.description,
    this.eventTrigger,
    this.kmsKeyName,
    this.labels,
    required this.location,
    this.name,
    this.project,
    this.serviceConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildConfig': ?pulumi.Input.mapOptionalInputValue<FunctionBuildConfig, Map<String, dynamic>>(buildConfig, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'eventTrigger': ?pulumi.Input.mapOptionalInputValue<FunctionEventTrigger, Map<String, dynamic>>(eventTrigger, (value) => value.toMap()),
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'project': ?project,
      'serviceConfig': ?pulumi.Input.mapOptionalInputValue<FunctionServiceConfig, Map<String, dynamic>>(serviceConfig, (value) => value.toMap()),
    };
  }

  factory FunctionArgs.fromMap(Map<String, dynamic> map) {
    return FunctionArgs(
      buildConfig: (() { final guardedValue = map['buildConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionBuildConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventTrigger: (() { final guardedValue = map['eventTrigger']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionEventTrigger.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceConfig: (() { final guardedValue = map['serviceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionServiceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
