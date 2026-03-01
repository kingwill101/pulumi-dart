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
    pulumi.Output<String>? authenticationMode,
    pulumi.Output<String>? storageAccountKey,
    pulumi.Output<String>? storageAccountName,
    pulumi.Output<String>? streamAnalyticsJobId,
  }) :
      authenticationMode = pulumi.Input.asOptionalInput<String>(authenticationMode),
      storageAccountKey = pulumi.Input.asOptionalInput<String>(storageAccountKey),
      storageAccountName = pulumi.Input.asOptionalInput<String>(storageAccountName),
      streamAnalyticsJobId = pulumi.Input.asOptionalInput<String>(streamAnalyticsJobId);

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
      authenticationMode: map['authenticationMode'] == null ? null : pulumi.Output.create<String>(map['authenticationMode'] as String),
      storageAccountKey: map['storageAccountKey'] == null ? null : pulumi.Output.create<String>(map['storageAccountKey'] as String),
      storageAccountName: map['storageAccountName'] == null ? null : pulumi.Output.create<String>(map['storageAccountName'] as String),
      streamAnalyticsJobId: map['streamAnalyticsJobId'] == null ? null : pulumi.Output.create<String>(map['streamAnalyticsJobId'] as String),
    );
  }
}

