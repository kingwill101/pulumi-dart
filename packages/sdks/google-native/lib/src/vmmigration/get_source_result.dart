// ignore_for_file: unused_element, unnecessary_cast

import 'aws_source_details_response.dart';
import 'azure_source_details_response.dart';
import 'encryption_response.dart';
import 'vmware_source_details_response.dart';

/// Result data returned by getSource.
class GetSourceResult {
  /// AWS type source details.
  final AwsSourceDetailsResponse? aws;
  /// Azure type source details.
  final AzureSourceDetailsResponse? azure;
  /// The create time timestamp.
  final String? createTime;
  /// User-provided description of the source.
  final String? description;
  /// Optional. Immutable. The encryption details of the source data stored by the service.
  final EncryptionResponse? encryption;
  /// The labels of the source.
  final Map<String, String>? labels;
  /// The Source name.
  final String? name;
  /// The update time timestamp.
  final String? updateTime;
  /// Vmware type source details.
  final VmwareSourceDetailsResponse? vmware;

  /// Creates a new [GetSourceResult].
  /// [aws] AWS type source details.
  /// [azure] Azure type source details.
  /// [createTime] The create time timestamp.
  /// [description] User-provided description of the source.
  /// [encryption] Optional. Immutable. The encryption details of the source data stored by the service.
  /// [labels] The labels of the source.
  /// [name] The Source name.
  /// [updateTime] The update time timestamp.
  /// [vmware] Vmware type source details.
  const GetSourceResult({
    this.aws,
    this.azure,
    this.createTime,
    this.description,
    this.encryption,
    this.labels,
    this.name,
    this.updateTime,
    this.vmware,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aws': ?aws?.toMap(),
      'azure': ?azure?.toMap(),
      'createTime': ?createTime,
      'description': ?description,
      'encryption': ?encryption?.toMap(),
      'labels': ?labels,
      'name': ?name,
      'updateTime': ?updateTime,
      'vmware': ?vmware?.toMap(),
    };
  }

  factory GetSourceResult.fromMap(Map<String, dynamic> map) {
    return GetSourceResult(
      aws: (() { final guardedValue = map['aws']; if (guardedValue == null) return null; return AwsSourceDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azure: (() { final guardedValue = map['azure']; if (guardedValue == null) return null; return AzureSourceDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return EncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmware: (() { final guardedValue = map['vmware']; if (guardedValue == null) return null; return VmwareSourceDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
