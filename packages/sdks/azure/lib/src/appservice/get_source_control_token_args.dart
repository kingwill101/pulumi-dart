// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appservice_get_source_control_token_get_source_control_token_args_doc}
/// Arguments for getSourceControlToken.
/// {@endtemplate}
/// {@macro pulumi_appservice_get_source_control_token_get_source_control_token_args_doc}
class GetSourceControlTokenArgs {
  /// The Token type. Possible values include `Bitbucket`, `Dropbox`, `Github`, and `OneDrive`.
  final pulumi.Input<String> type;

  /// Creates a new [GetSourceControlTokenArgs].
  /// [type] The Token type. Possible values include `Bitbucket`, `Dropbox`, `Github`, and `OneDrive`.
  GetSourceControlTokenArgs({required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type};
  }

  factory GetSourceControlTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetSourceControlTokenArgs(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
