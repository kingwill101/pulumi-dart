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
  LoggingRuleHiddenPropertyPathsResponse({
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
      hiddenPathsOnRequest: map['hiddenPathsOnRequest'] == null ? null : ((map['hiddenPathsOnRequest']! as List).cast<String>()).input(),
      hiddenPathsOnResponse: map['hiddenPathsOnResponse'] == null ? null : ((map['hiddenPathsOnResponse']! as List).cast<String>()).input(),
    );
  }
}

