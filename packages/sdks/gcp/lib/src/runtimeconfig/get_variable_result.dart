// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVariable.
class GetVariableResult {
  final String deletionPolicy;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String parent;
  final String? project;
  final String text;
  final String updateTime;
  final String value;

  /// Creates a new [GetVariableResult].
  /// [deletionPolicy] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [parent] Required.
  /// [project] Optional.
  /// [text] Required.
  /// [updateTime] Required.
  /// [value] Required.
  const GetVariableResult({
    required this.deletionPolicy,
    required this.id,
    required this.name,
    required this.parent,
    this.project,
    required this.text,
    required this.updateTime,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': deletionPolicy,
      'id': id,
      'name': name,
      'parent': parent,
      'project': ?project,
      'text': text,
      'updateTime': updateTime,
      'value': value,
    };
  }

  factory GetVariableResult.fromMap(Map<String, dynamic> map) {
    return GetVariableResult(
      deletionPolicy: map['deletionPolicy'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      parent: map['parent'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      text: map['text'] as String,
      updateTime: map['updateTime'] as String,
      value: map['value'] as String,
    );
  }
}
