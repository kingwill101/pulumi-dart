// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getParameterVersionRender.
class GetParameterVersionRenderResult {
  /// The current state of the Parameter Version.
  final bool? disabled;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The resource name of the ParameterVersion. Format:
  /// `projects/{{project}}/locations/global/parameters/{{parameter_id}}/versions/{{parameter_version_id}}`
  final String? name;
  final String? parameter;
  /// The Parameter data.
  final String? parameterData;
  final String? parameterVersionId;
  final String? project;
  /// The Rendered Parameter Data specifies that if you use `__REF__()` to reference a secret and the format is JSON or YAML, the placeholder `__REF__()` will be replaced with the actual secret value. However, if the format is UNFORMATTED, it will stay the same as the original `parameterData`.
  final String? renderedParameterData;

  /// Creates a new [GetParameterVersionRenderResult].
  /// [disabled] The current state of the Parameter Version.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The resource name of the ParameterVersion. Format:
  /// [parameter] Optional.
  /// [parameterData] The Parameter data.
  /// [parameterVersionId] Optional.
  /// [project] Optional.
  /// [renderedParameterData] The Rendered Parameter Data specifies that if you use `__REF__()` to reference a secret and the format is JSON or YAML, the placeholder `__REF__()` will be replaced with the actual secret value. However, if the format is UNFORMATTED, it will stay the same as the original `parameterData`.
  const GetParameterVersionRenderResult({
    this.disabled,
    this.id,
    this.name,
    this.parameter,
    this.parameterData,
    this.parameterVersionId,
    this.project,
    this.renderedParameterData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'id': ?id,
      'name': ?name,
      'parameter': ?parameter,
      'parameterData': ?parameterData,
      'parameterVersionId': ?parameterVersionId,
      'project': ?project,
      'renderedParameterData': ?renderedParameterData,
    };
  }

  factory GetParameterVersionRenderResult.fromMap(Map<String, dynamic> map) {
    return GetParameterVersionRenderResult(
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameter: (() { final guardedValue = map['parameter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameterData: (() { final guardedValue = map['parameterData']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameterVersionId: (() { final guardedValue = map['parameterVersionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      renderedParameterData: (() { final guardedValue = map['renderedParameterData']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
