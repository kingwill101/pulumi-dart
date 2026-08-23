// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getBoolVariable.
class GetBoolVariableResult {
  final String automationAccountName;
  /// The description of the Automation Variable.
  final String description;
  /// Specifies if the Automation Variable is encrypted. Defaults to `false`.
  final bool encrypted;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String resourceGroupName;
  /// The value of the Automation Variable as a `boolean`.
  final bool value;

  /// Creates a new [GetBoolVariableResult].
  /// [automationAccountName] Required.
  /// [description] The description of the Automation Variable.
  /// [encrypted] Specifies if the Automation Variable is encrypted. Defaults to `false`.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [value] The value of the Automation Variable as a `boolean`.
  const GetBoolVariableResult({
    required this.automationAccountName,
    required this.description,
    required this.encrypted,
    required this.id,
    required this.name,
    required this.resourceGroupName,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'description': description,
      'encrypted': encrypted,
      'id': id,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'value': value,
    };
  }

  factory GetBoolVariableResult.fromMap(Map<String, dynamic> map) {
    return GetBoolVariableResult(
      automationAccountName: map['automationAccountName'] as String,
      description: map['description'] as String,
      encrypted: map['encrypted'] as bool,
      id: map['id'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      value: map['value'] as bool,
    );
  }
}
