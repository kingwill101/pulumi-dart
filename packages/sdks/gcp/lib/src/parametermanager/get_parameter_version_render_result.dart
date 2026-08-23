// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getParameterVersionRender.
class GetParameterVersionRenderResult {
  /// The current state of the Parameter Version.
  final bool disabled;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The resource name of the ParameterVersion. Format:
  /// `projects/{{project}}/locations/global/parameters/{{parameter_id}}/versions/{{parameter_version_id}}`
  final String name;
  final String parameter;
  /// The Parameter data.
  final String parameterData;
  final String parameterVersionId;
  final String project;
  /// The Rendered Parameter Data specifies that if you use `__REF__()` to reference a secret and the format is JSON or YAML, the placeholder `__REF__()` will be replaced with the actual secret value. However, if the format is UNFORMATTED, it will stay the same as the original `parameterData`.
  final String renderedParameterData;

  /// Creates a new [GetParameterVersionRenderResult].
  /// [disabled] The current state of the Parameter Version.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The resource name of the ParameterVersion. Format:
  /// [parameter] Required.
  /// [parameterData] The Parameter data.
  /// [parameterVersionId] Required.
  /// [project] Required.
  /// [renderedParameterData] The Rendered Parameter Data specifies that if you use `__REF__()` to reference a secret and the format is JSON or YAML, the placeholder `__REF__()` will be replaced with the actual secret value. However, if the format is UNFORMATTED, it will stay the same as the original `parameterData`.
  const GetParameterVersionRenderResult({
    required this.disabled,
    required this.id,
    required this.name,
    required this.parameter,
    required this.parameterData,
    required this.parameterVersionId,
    required this.project,
    required this.renderedParameterData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
      'id': id,
      'name': name,
      'parameter': parameter,
      'parameterData': parameterData,
      'parameterVersionId': parameterVersionId,
      'project': project,
      'renderedParameterData': renderedParameterData,
    };
  }

  factory GetParameterVersionRenderResult.fromMap(Map<String, dynamic> map) {
    return GetParameterVersionRenderResult(
      disabled: map['disabled'] as bool,
      id: map['id'] as String,
      name: map['name'] as String,
      parameter: map['parameter'] as String,
      parameterData: map['parameterData'] as String,
      parameterVersionId: map['parameterVersionId'] as String,
      project: map['project'] as String,
      renderedParameterData: map['renderedParameterData'] as String,
    );
  }
}
