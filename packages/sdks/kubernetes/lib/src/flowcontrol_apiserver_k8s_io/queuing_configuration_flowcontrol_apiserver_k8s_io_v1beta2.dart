// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// QueuingConfiguration holds the configuration parameters for queuing
class QueuingConfigurationFlowcontrolApiserverK8sIoV1beta2 {
  /// `handSize` is a small positive number that configures the shuffle sharding of requests into queues.  When enqueuing a request at this priority level the request's flow identifier (a string pair) is hashed and the hash value is used to shuffle the list of queues and deal a hand of the size specified here.  The request is put into one of the shortest queues in that hand. `handSize` must be no larger than `queues`, and should be significantly smaller (so that a few heavy flows do not saturate most of the queues).  See the user-facing documentation for more extensive guidance on setting this field.  This field has a default value of 8.
  final pulumi.Input<int?>? handSize;
  /// `queueLengthLimit` is the maximum number of requests allowed to be waiting in a given queue of this priority level at a time; excess requests are rejected.  This value must be positive.  If not specified, it will be defaulted to 50.
  final pulumi.Input<int?>? queueLengthLimit;
  /// `queues` is the number of queues for this priority level. The queues exist independently at each apiserver. The value must be positive.  Setting it to 1 effectively precludes shufflesharding and thus makes the distinguisher method of associated flow schemas irrelevant.  This field has a default value of 64.
  final pulumi.Input<int?>? queues;

  /// Creates a new [QueuingConfigurationFlowcontrolApiserverK8sIoV1beta2].
  /// [handSize] `handSize` is a small positive number that configures the shuffle sharding of requests into queues.  When enqueuing a request at this priority level the request's flow identifier (a string pair) is hashed and the hash value is used to shuffle the list of queues and deal a hand of the size specified here.  The request is put into one of the shortest queues in that hand. `handSize` must be no larger than `queues`, and should be significantly smaller (so that a few heavy flows do not saturate most of the queues).  See the user-facing documentation for more extensive guidance on setting this field.  This field has a default value of 8.
  /// [queueLengthLimit] `queueLengthLimit` is the maximum number of requests allowed to be waiting in a given queue of this priority level at a time; excess requests are rejected.  This value must be positive.  If not specified, it will be defaulted to 50.
  /// [queues] `queues` is the number of queues for this priority level. The queues exist independently at each apiserver. The value must be positive.  Setting it to 1 effectively precludes shufflesharding and thus makes the distinguisher method of associated flow schemas irrelevant.  This field has a default value of 64.
  const QueuingConfigurationFlowcontrolApiserverK8sIoV1beta2({
    this.handSize,
    this.queueLengthLimit,
    this.queues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'handSize': ?handSize,
      'queueLengthLimit': ?queueLengthLimit,
      'queues': ?queues,
    };
  }

  factory QueuingConfigurationFlowcontrolApiserverK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return QueuingConfigurationFlowcontrolApiserverK8sIoV1beta2(
      handSize: (() { final guardedValue = map['handSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      queueLengthLimit: (() { final guardedValue = map['queueLengthLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      queues: (() { final guardedValue = map['queues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
