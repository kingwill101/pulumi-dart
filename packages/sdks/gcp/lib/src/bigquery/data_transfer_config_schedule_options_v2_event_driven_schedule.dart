// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataTransferConfigScheduleOptionsV2EventDrivenSchedule {
  /// Pub/Sub subscription name used to receive events. Only the
  /// Google Cloud Storage data source supports this option. Format:
  /// projects/{project}/subscriptions/{subscription}.
  final pulumi.Input<String> pubsubSubscription;

  /// Creates a new [DataTransferConfigScheduleOptionsV2EventDrivenSchedule].
  /// [pubsubSubscription] Pub/Sub subscription name used to receive events. Only the
  const DataTransferConfigScheduleOptionsV2EventDrivenSchedule({
    required this.pubsubSubscription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pubsubSubscription': pubsubSubscription,
    };
  }

  factory DataTransferConfigScheduleOptionsV2EventDrivenSchedule.fromMap(Map<String, dynamic> map) {
    return DataTransferConfigScheduleOptionsV2EventDrivenSchedule(
      pubsubSubscription: pulumi.Input.fromValue(map['pubsubSubscription'] as String),
    );
  }
}
