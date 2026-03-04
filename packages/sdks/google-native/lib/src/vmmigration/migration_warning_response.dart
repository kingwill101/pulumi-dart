// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'link_response.dart';
import 'localized_message_response.dart';

/// Represents migration resource warning information that can be used with google.rpc.Status message. MigrationWarning is used to present the user with warning information in migration operations.
class MigrationWarningResponse {
  /// Suggested action for solving the warning.
  final pulumi.Input<LocalizedMessageResponse> actionItem;

  /// The warning code.
  final pulumi.Input<String> code;

  /// URL(s) pointing to additional information on handling the current warning.
  final pulumi.Input<List<LinkResponse>> helpLinks;

  /// The localized warning message.
  final pulumi.Input<LocalizedMessageResponse> warningMessage;

  /// The time the warning occurred.
  final pulumi.Input<String> warningTime;

  /// Creates a new [MigrationWarningResponse].
  /// [actionItem] Suggested action for solving the warning.
  /// [code] The warning code.
  /// [helpLinks] URL(s) pointing to additional information on handling the current warning.
  /// [warningMessage] The localized warning message.
  /// [warningTime] The time the warning occurred.
  MigrationWarningResponse({
    required this.actionItem,
    required this.code,
    required this.helpLinks,
    required this.warningMessage,
    required this.warningTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionItem':
          pulumi.Input.mapInputValue<
            LocalizedMessageResponse,
            Map<String, dynamic>
          >(actionItem, (value) => value.toMap()),
      'code': code,
      'helpLinks':
          pulumi.Input.mapInputValue<
            List<LinkResponse>,
            List<Map<String, dynamic>>
          >(
            helpLinks,
            (value) =>
                pulumi.Input.encodeList<LinkResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'warningMessage':
          pulumi.Input.mapInputValue<
            LocalizedMessageResponse,
            Map<String, dynamic>
          >(warningMessage, (value) => value.toMap()),
      'warningTime': warningTime,
    };
  }

  factory MigrationWarningResponse.fromMap(Map<String, dynamic> map) {
    return MigrationWarningResponse(
      actionItem: pulumi.Input.fromValue(
        LocalizedMessageResponse.fromMap(
          (map['actionItem']! as Map).cast<String, dynamic>(),
        ),
      ),
      code: pulumi.Input.fromValue(map['code'] as String),
      helpLinks: pulumi.Input.fromValue(
        pulumi.Input.decodeList<LinkResponse>(
          map['helpLinks']!,
          (value) =>
              LinkResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      warningMessage: pulumi.Input.fromValue(
        LocalizedMessageResponse.fromMap(
          (map['warningMessage']! as Map).cast<String, dynamic>(),
        ),
      ),
      warningTime: pulumi.Input.fromValue(map['warningTime'] as String),
    );
  }
}
