// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_access_scope_allowed_data_access_label_ingestion_label.dart';

class DataAccessScopeAllowedDataAccessLabel {
  /// The asset namespace configured in the forwarder
  /// of the customer's events.
  final pulumi.Input<String>? assetNamespace;
  /// The name of the data access label.
  final pulumi.Input<String>? dataAccessLabel;
  /// (Output)
  /// Output only. The display name of the label.
  /// Data access label and log types's name
  /// will match the display name of the resource.
  /// The asset namespace will match the namespace itself.
  /// The ingestion key value pair will match the key of the tuple.
  final pulumi.Input<String>? displayName;
  /// Representation of an ingestion label type.
  /// Structure is documented below.
  final pulumi.Input<DataAccessScopeAllowedDataAccessLabelIngestionLabel>? ingestionLabel;
  /// The name of the log type.
  final pulumi.Input<String>? logType;

  /// Creates a new [DataAccessScopeAllowedDataAccessLabel].
  /// [assetNamespace] The asset namespace configured in the forwarder
  /// [dataAccessLabel] The name of the data access label.
  /// [displayName] (Output)
  /// [ingestionLabel] Representation of an ingestion label type.
  /// [logType] The name of the log type.
  DataAccessScopeAllowedDataAccessLabel({
    this.assetNamespace,
    this.dataAccessLabel,
    this.displayName,
    this.ingestionLabel,
    this.logType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetNamespace': ?assetNamespace,
      'dataAccessLabel': ?dataAccessLabel,
      'displayName': ?displayName,
      'ingestionLabel': ?pulumi.Input.mapOptionalInputValue<DataAccessScopeAllowedDataAccessLabelIngestionLabel, Map<String, dynamic>>(ingestionLabel, (value) => value.toMap()),
      'logType': ?logType,
    };
  }

  factory DataAccessScopeAllowedDataAccessLabel.fromMap(Map<String, dynamic> map) {
    return DataAccessScopeAllowedDataAccessLabel(
      assetNamespace: map['assetNamespace'] == null ? null : (map['assetNamespace']! as String).input(),
      dataAccessLabel: map['dataAccessLabel'] == null ? null : (map['dataAccessLabel']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      ingestionLabel: map['ingestionLabel'] == null ? null : (DataAccessScopeAllowedDataAccessLabelIngestionLabel.fromMap((map['ingestionLabel']! as Map).cast<String, dynamic>())).input(),
      logType: map['logType'] == null ? null : (map['logType']! as String).input(),
    );
  }
}

