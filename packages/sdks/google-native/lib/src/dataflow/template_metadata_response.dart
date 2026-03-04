// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_metadata_response.dart';

/// Metadata describing a template.
class TemplateMetadataResponse {
  /// Optional. A description of the template.
  final pulumi.Input<String> description;

  /// The name of the template.
  final pulumi.Input<String> name;

  /// The parameters for the template.
  final pulumi.Input<List<ParameterMetadataResponse>> parameters;

  /// Creates a new [TemplateMetadataResponse].
  /// [description] Optional. A description of the template.
  /// [name] The name of the template.
  /// [parameters] The parameters for the template.
  TemplateMetadataResponse({
    required this.description,
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'name': name,
      'parameters':
          pulumi.Input.mapInputValue<
            List<ParameterMetadataResponse>,
            List<Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeList<
                  ParameterMetadataResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory TemplateMetadataResponse.fromMap(Map<String, dynamic> map) {
    return TemplateMetadataResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ParameterMetadataResponse>(
          map['parameters']!,
          (value) => ParameterMetadataResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
