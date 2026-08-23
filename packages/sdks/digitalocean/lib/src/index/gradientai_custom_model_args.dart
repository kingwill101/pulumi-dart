// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gradientai_custom_model_source_ref.dart';

/// {@template pulumi_index_gradientai_custom_model_gradientai_custom_model_args_doc}
/// The set of arguments for GradientaiCustomModel.
/// {@endtemplate}
/// {@macro pulumi_index_gradientai_custom_model_gradientai_custom_model_args_doc}
class GradientaiCustomModelArgs {
  /// Whether the caller accepts the model provider's terms and conditions. Write-only.
  final pulumi.Input<bool>? acceptTermsAndConditions;
  /// Description of the custom model.
  final pulumi.Input<String>? description;
  /// Input modalities supported by the model. Defaults to the values reported by the importer. Caller-supplied overrides are honored only for SOURCE_TYPE_SPACES_BUCKET imports.
  final pulumi.Input<List<String>>? inputModalities;
  /// License of the model. Defaults to the value reported by the importer. Caller-supplied overrides are honored only for SOURCE_TYPE_SPACES_BUCKET imports.
  final pulumi.Input<String>? license;
  /// A human-readable name for the custom model.
  final pulumi.Input<String>? name;
  /// Output modalities produced by the model. Defaults to the values reported by the importer. Caller-supplied overrides are honored only for SOURCE_TYPE_SPACES_BUCKET imports.
  final pulumi.Input<List<String>>? outputModalities;
  /// Parameter-count summary for the model. Defaults to the value reported by the importer. Caller-supplied overrides are honored only for SOURCE_TYPE_SPACES_BUCKET imports.
  final pulumi.Input<String>? parameters;
  /// Preferred GPU region where the model artifacts should be staged.
  final pulumi.Input<String>? preferredGpuRegion;
  /// Reference to the source from which to import the custom model.
  final pulumi.Input<GradientaiCustomModelSourceRef> sourceRef;
  /// Source of the model to import. One of SOURCE_TYPE_HUGGINGFACE, SOURCE_TYPE_SPACES_BUCKET, SOURCE_TYPE_SDK_UPLOAD, SOURCE_TYPE_FINE_TUNING.
  final pulumi.Input<String> sourceType;
  /// User-defined tags associated with the custom model.
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [GradientaiCustomModelArgs].
  /// [acceptTermsAndConditions] Whether the caller accepts the model provider's terms and conditions. Write-only.
  /// [description] Description of the custom model.
  /// [inputModalities] Input modalities supported by the model. Defaults to the values reported by the importer. Caller-supplied overrides are honored only for SOURCE_TYPE_SPACES_BUCKET imports.
  /// [license] License of the model. Defaults to the value reported by the importer. Caller-supplied overrides are honored only for SOURCE_TYPE_SPACES_BUCKET imports.
  /// [name] A human-readable name for the custom model.
  /// [outputModalities] Output modalities produced by the model. Defaults to the values reported by the importer. Caller-supplied overrides are honored only for SOURCE_TYPE_SPACES_BUCKET imports.
  /// [parameters] Parameter-count summary for the model. Defaults to the value reported by the importer. Caller-supplied overrides are honored only for SOURCE_TYPE_SPACES_BUCKET imports.
  /// [preferredGpuRegion] Preferred GPU region where the model artifacts should be staged.
  /// [sourceRef] Reference to the source from which to import the custom model.
  /// [sourceType] Source of the model to import. One of SOURCE_TYPE_HUGGINGFACE, SOURCE_TYPE_SPACES_BUCKET, SOURCE_TYPE_SDK_UPLOAD, SOURCE_TYPE_FINE_TUNING.
  /// [tags] User-defined tags associated with the custom model.
  const GradientaiCustomModelArgs({
    this.acceptTermsAndConditions,
    this.description,
    this.inputModalities,
    this.license,
    this.name,
    this.outputModalities,
    this.parameters,
    this.preferredGpuRegion,
    required this.sourceRef,
    required this.sourceType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptTermsAndConditions': ?acceptTermsAndConditions,
      'description': ?description,
      'inputModalities': ?inputModalities,
      'license': ?license,
      'name': ?name,
      'outputModalities': ?outputModalities,
      'parameters': ?parameters,
      'preferredGpuRegion': ?preferredGpuRegion,
      'sourceRef': pulumi.Input.mapInputValue<GradientaiCustomModelSourceRef, Map<String, dynamic>>(sourceRef, (value) => value.toMap()),
      'sourceType': sourceType,
      'tags': ?tags,
    };
  }

  factory GradientaiCustomModelArgs.fromMap(Map<String, dynamic> map) {
    return GradientaiCustomModelArgs(
      acceptTermsAndConditions: (() { final guardedValue = map['acceptTermsAndConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputModalities: (() { final guardedValue = map['inputModalities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      license: (() { final guardedValue = map['license']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputModalities: (() { final guardedValue = map['outputModalities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferredGpuRegion: (() { final guardedValue = map['preferredGpuRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceRef: pulumi.Input.fromValue(GradientaiCustomModelSourceRef.fromMap((map['sourceRef']! as Map).cast<String, dynamic>())),
      sourceType: pulumi.Input.fromValue(map['sourceType'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
