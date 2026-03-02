// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering JobStorageAccount resources.
class JobStorageAccountState {
  /// The authentication mode for the Stream Analytics Job's Storage Account. Possible values are `ConnectionString`, and `Msi`.
  final pulumi.Input<String>? authenticationMode;
  final pulumi.Input<String>? storageAccountKey;
  final pulumi.Input<String>? storageAccountName;
  /// The ID of the Stream Analytics Job. Changing this forces a new resource to be created.
  final pulumi.Input<String>? streamAnalyticsJobId;

  /// Creates a new [JobStorageAccountState].
  /// [authenticationMode] The authentication mode for the Stream Analytics Job's Storage Account. Possible values are `ConnectionString`, and `Msi`.
  /// [storageAccountKey] Optional.
  /// [storageAccountName] Optional.
  /// [streamAnalyticsJobId] The ID of the Stream Analytics Job. Changing this forces a new resource to be created.
  JobStorageAccountState({
    this.authenticationMode,
    this.storageAccountKey,
    this.storageAccountName,
    this.streamAnalyticsJobId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode,
      'storageAccountKey': ?storageAccountKey,
      'storageAccountName': ?storageAccountName,
      'streamAnalyticsJobId': ?streamAnalyticsJobId,
    };
  }

  factory JobStorageAccountState.fromMap(Map<String, dynamic> map) {
    return JobStorageAccountState(
      authenticationMode: map['authenticationMode'] == null ? null : (map['authenticationMode'] as String).input(),
      storageAccountKey: map['storageAccountKey'] == null ? null : (map['storageAccountKey'] as String).input(),
      storageAccountName: map['storageAccountName'] == null ? null : (map['storageAccountName'] as String).input(),
      streamAnalyticsJobId: map['streamAnalyticsJobId'] == null ? null : (map['streamAnalyticsJobId'] as String).input(),
    );
  }
}

