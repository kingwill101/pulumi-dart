// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'link_response.dart';
import 'localized_message_response.dart';

/// Represents migration resource warning information that can be used with google.rpc.Status message. MigrationWarning is used to present the user with warning information in migration operations.
class MigrationWarningResponse {
  /// Suggested action for solving the warning.
  final LocalizedMessageResponse actionItem;
  /// The warning code.
  final String code;
  /// URL(s) pointing to additional information on handling the current warning.
  final List<LinkResponse> helpLinks;
  /// The localized warning message.
  final LocalizedMessageResponse warningMessage;
  /// The time the warning occurred.
  final String warningTime;

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
      'actionItem': actionItem.toMap(),
      'code': code,
      'helpLinks': pulumi.Input.encodeList<LinkResponse, Map<String, dynamic>>(helpLinks, (value) => value.toMap()),
      'warningMessage': warningMessage.toMap(),
      'warningTime': warningTime,
    };
  }

  factory MigrationWarningResponse.fromMap(Map<String, dynamic> map) {
    return MigrationWarningResponse(
      actionItem: LocalizedMessageResponse.fromMap((map['actionItem'] as Map).cast<String, dynamic>()),
      code: map['code'] as String,
      helpLinks: pulumi.Input.decodeList<LinkResponse>(map['helpLinks'], (value) => LinkResponse.fromMap((value as Map).cast<String, dynamic>())),
      warningMessage: LocalizedMessageResponse.fromMap((map['warningMessage'] as Map).cast<String, dynamic>()),
      warningTime: map['warningTime'] as String,
    );
  }
}

