// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The hidden property paths.
class LoggingRuleHiddenPropertyPathsResponse {
  /// The hidden paths on request.
  final pulumi.Input<List<String>>? hiddenPathsOnRequest;
  /// The hidden paths on response.
  final pulumi.Input<List<String>>? hiddenPathsOnResponse;

  /// Creates a new [LoggingRuleHiddenPropertyPathsResponse].
  /// [hiddenPathsOnRequest] The hidden paths on request.
  /// [hiddenPathsOnResponse] The hidden paths on response.
  const LoggingRuleHiddenPropertyPathsResponse({
    this.hiddenPathsOnRequest,
    this.hiddenPathsOnResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hiddenPathsOnRequest': ?hiddenPathsOnRequest,
      'hiddenPathsOnResponse': ?hiddenPathsOnResponse,
    };
  }

  factory LoggingRuleHiddenPropertyPathsResponse.fromMap(Map<String, dynamic> map) {
    return LoggingRuleHiddenPropertyPathsResponse(
      hiddenPathsOnRequest: (() { final guardedValue = map['hiddenPathsOnRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      hiddenPathsOnResponse: (() { final guardedValue = map['hiddenPathsOnResponse']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

