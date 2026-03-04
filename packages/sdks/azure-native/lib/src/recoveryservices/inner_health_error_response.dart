// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Implements InnerHealthError class. HealthError object has a list of InnerHealthErrors as child errors. InnerHealthError is used because this will prevent an infinite loop of structures when Hydra tries to auto-generate the contract. We are exposing the related health errors as inner health errors and all API consumers can utilize this in the same fashion as Exception -&gt; InnerException.
class InnerHealthErrorResponse {
  /// Error creation time (UTC).
  final pulumi.Input<String>? creationTimeUtc;

  /// Value indicating whether the health error is customer resolvable.
  final pulumi.Input<String>? customerResolvability;

  /// ID of the entity.
  final pulumi.Input<String>? entityId;

  /// Category of error.
  final pulumi.Input<String>? errorCategory;

  /// Error code.
  final pulumi.Input<String>? errorCode;

  /// The health error unique id.
  final pulumi.Input<String>? errorId;

  /// Level of error.
  final pulumi.Input<String>? errorLevel;

  /// Error message.
  final pulumi.Input<String>? errorMessage;

  /// Source of error.
  final pulumi.Input<String>? errorSource;

  /// Type of error.
  final pulumi.Input<String>? errorType;

  /// Possible causes of error.
  final pulumi.Input<String>? possibleCauses;

  /// Recommended action to resolve error.
  final pulumi.Input<String>? recommendedAction;

  /// DRA error message.
  final pulumi.Input<String>? recoveryProviderErrorMessage;

  /// Summary message of the entity.
  final pulumi.Input<String>? summaryMessage;

  /// Creates a new [InnerHealthErrorResponse].
  /// [creationTimeUtc] Error creation time (UTC).
  /// [customerResolvability] Value indicating whether the health error is customer resolvable.
  /// [entityId] ID of the entity.
  /// [errorCategory] Category of error.
  /// [errorCode] Error code.
  /// [errorId] The health error unique id.
  /// [errorLevel] Level of error.
  /// [errorMessage] Error message.
  /// [errorSource] Source of error.
  /// [errorType] Type of error.
  /// [possibleCauses] Possible causes of error.
  /// [recommendedAction] Recommended action to resolve error.
  /// [recoveryProviderErrorMessage] DRA error message.
  /// [summaryMessage] Summary message of the entity.
  InnerHealthErrorResponse({
    this.creationTimeUtc,
    this.customerResolvability,
    this.entityId,
    this.errorCategory,
    this.errorCode,
    this.errorId,
    this.errorLevel,
    this.errorMessage,
    this.errorSource,
    this.errorType,
    this.possibleCauses,
    this.recommendedAction,
    this.recoveryProviderErrorMessage,
    this.summaryMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimeUtc': ?creationTimeUtc,
      'customerResolvability': ?customerResolvability,
      'entityId': ?entityId,
      'errorCategory': ?errorCategory,
      'errorCode': ?errorCode,
      'errorId': ?errorId,
      'errorLevel': ?errorLevel,
      'errorMessage': ?errorMessage,
      'errorSource': ?errorSource,
      'errorType': ?errorType,
      'possibleCauses': ?possibleCauses,
      'recommendedAction': ?recommendedAction,
      'recoveryProviderErrorMessage': ?recoveryProviderErrorMessage,
      'summaryMessage': ?summaryMessage,
    };
  }

  factory InnerHealthErrorResponse.fromMap(Map<String, dynamic> map) {
    return InnerHealthErrorResponse(
      creationTimeUtc: (() {
        final guardedValue = map['creationTimeUtc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customerResolvability: (() {
        final guardedValue = map['customerResolvability'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      entityId: (() {
        final guardedValue = map['entityId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      errorCategory: (() {
        final guardedValue = map['errorCategory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      errorCode: (() {
        final guardedValue = map['errorCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      errorId: (() {
        final guardedValue = map['errorId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      errorLevel: (() {
        final guardedValue = map['errorLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      errorMessage: (() {
        final guardedValue = map['errorMessage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      errorSource: (() {
        final guardedValue = map['errorSource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      errorType: (() {
        final guardedValue = map['errorType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      possibleCauses: (() {
        final guardedValue = map['possibleCauses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recommendedAction: (() {
        final guardedValue = map['recommendedAction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recoveryProviderErrorMessage: (() {
        final guardedValue = map['recoveryProviderErrorMessage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      summaryMessage: (() {
        final guardedValue = map['summaryMessage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
