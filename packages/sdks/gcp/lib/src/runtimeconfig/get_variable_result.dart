// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVariable.
class GetVariableResult {
  final String? deletionPolicy;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? parent;
  final String? project;
  final String? text;
  final String? updateTime;
  final String? value;

  /// Creates a new [GetVariableResult].
  /// [deletionPolicy] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [parent] Optional.
  /// [project] Optional.
  /// [text] Optional.
  /// [updateTime] Optional.
  /// [value] Optional.
  const GetVariableResult({
    this.deletionPolicy,
    this.id,
    this.name,
    this.parent,
    this.project,
    this.text,
    this.updateTime,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'id': ?id,
      'name': ?name,
      'parent': ?parent,
      'project': ?project,
      'text': ?text,
      'updateTime': ?updateTime,
      'value': ?value,
    };
  }

  factory GetVariableResult.fromMap(Map<String, dynamic> map) {
    return GetVariableResult(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
