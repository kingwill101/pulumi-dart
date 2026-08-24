// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomPagesListResult {
  final pulumi.Input<String> createdOn;
  final pulumi.Input<String> description;
  final pulumi.Input<String> id;
  final pulumi.Input<String> modifiedOn;
  final pulumi.Input<String> previewTarget;
  final pulumi.Input<List<String>> requiredTokens;
  /// The custom page state.
  /// Available values: "default", "customized".
  final pulumi.Input<String> state;
  /// The URL associated with the custom page.
  final pulumi.Input<String> url;

  /// Creates a new [GetCustomPagesListResult].
  /// [createdOn] Required.
  /// [description] Required.
  /// [id] Required.
  /// [modifiedOn] Required.
  /// [previewTarget] Required.
  /// [requiredTokens] Required.
  /// [state] The custom page state.
  /// [url] The URL associated with the custom page.
  const GetCustomPagesListResult({
    required this.createdOn,
    required this.description,
    required this.id,
    required this.modifiedOn,
    required this.previewTarget,
    required this.requiredTokens,
    required this.state,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': createdOn,
      'description': description,
      'id': id,
      'modifiedOn': modifiedOn,
      'previewTarget': previewTarget,
      'requiredTokens': requiredTokens,
      'state': state,
      'url': url,
    };
  }

  factory GetCustomPagesListResult.fromMap(Map<String, dynamic> map) {
    return GetCustomPagesListResult(
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      previewTarget: pulumi.Input.fromValue(map['previewTarget'] as String),
      requiredTokens: pulumi.Input.fromValue((map['requiredTokens'] as List).cast<String>()),
      state: pulumi.Input.fromValue(map['state'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
