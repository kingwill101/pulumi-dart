// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceAttachmentConsumerAcceptList {
  /// The number of consumer forwarding rules the consumer project can
  /// create.
  final pulumi.Input<int> connectionLimit;
  /// The endpoint that is allowed to connect to this service attachment.
  /// Only one of project_id_or_num, networkUrl and endpointUrl may be set.
  final pulumi.Input<String?>? endpointUrl;
  /// The network that is allowed to connect to this service attachment.
  /// Only one of projectIdOrNum and networkUrl may be set.
  final pulumi.Input<String?>? networkUrl;
  /// A project that is allowed to connect to this service attachment.
  /// Only one of projectIdOrNum and networkUrl may be set.
  final pulumi.Input<String?>? projectIdOrNum;

  /// Creates a new [ServiceAttachmentConsumerAcceptList].
  /// [connectionLimit] The number of consumer forwarding rules the consumer project can
  /// [endpointUrl] The endpoint that is allowed to connect to this service attachment.
  /// [networkUrl] The network that is allowed to connect to this service attachment.
  /// [projectIdOrNum] A project that is allowed to connect to this service attachment.
  const ServiceAttachmentConsumerAcceptList({
    required this.connectionLimit,
    this.endpointUrl,
    this.networkUrl,
    this.projectIdOrNum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionLimit': connectionLimit,
      'endpointUrl': ?endpointUrl,
      'networkUrl': ?networkUrl,
      'projectIdOrNum': ?projectIdOrNum,
    };
  }

  factory ServiceAttachmentConsumerAcceptList.fromMap(Map<String, dynamic> map) {
    return ServiceAttachmentConsumerAcceptList(
      connectionLimit: pulumi.Input.fromValue((map['connectionLimit'] as num).toInt()),
      endpointUrl: (() { final guardedValue = map['endpointUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkUrl: (() { final guardedValue = map['networkUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectIdOrNum: (() { final guardedValue = map['projectIdOrNum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
