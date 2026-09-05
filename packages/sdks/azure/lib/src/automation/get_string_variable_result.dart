// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getStringVariable.
class GetStringVariableResult {
  final String? automationAccountName;
  /// The description of the Automation Variable.
  final String? description;
  /// Specifies if the Automation Variable is encrypted. Defaults to `false`.
  final bool? encrypted;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? resourceGroupName;
  /// The value of the Automation Variable as a `string`.
  final String? value;

  /// Creates a new [GetStringVariableResult].
  /// [automationAccountName] Optional.
  /// [description] The description of the Automation Variable.
  /// [encrypted] Specifies if the Automation Variable is encrypted. Defaults to `false`.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [value] The value of the Automation Variable as a `string`.
  const GetStringVariableResult({
    this.automationAccountName,
    this.description,
    this.encrypted,
    this.id,
    this.name,
    this.resourceGroupName,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': ?automationAccountName,
      'description': ?description,
      'encrypted': ?encrypted,
      'id': ?id,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'value': ?value,
    };
  }

  factory GetStringVariableResult.fromMap(Map<String, dynamic> map) {
    return GetStringVariableResult(
      automationAccountName: (() { final guardedValue = map['automationAccountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
