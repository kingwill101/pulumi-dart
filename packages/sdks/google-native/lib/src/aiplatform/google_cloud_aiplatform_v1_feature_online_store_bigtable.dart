// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_feature_online_store_bigtable_auto_scaling.dart';

class GoogleCloudAiplatformV1FeatureOnlineStoreBigtable {
  /// Autoscaling config applied to Bigtable Instance.
  final pulumi.Input<
    GoogleCloudAiplatformV1FeatureOnlineStoreBigtableAutoScaling
  >
  autoScaling;

  /// Creates a new [GoogleCloudAiplatformV1FeatureOnlineStoreBigtable].
  /// [autoScaling] Autoscaling config applied to Bigtable Instance.
  GoogleCloudAiplatformV1FeatureOnlineStoreBigtable({
    required this.autoScaling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoScaling':
          pulumi.Input.mapInputValue<
            GoogleCloudAiplatformV1FeatureOnlineStoreBigtableAutoScaling,
            Map<String, dynamic>
          >(autoScaling, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1FeatureOnlineStoreBigtable.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1FeatureOnlineStoreBigtable(
      autoScaling: pulumi.Input.fromValue(
        GoogleCloudAiplatformV1FeatureOnlineStoreBigtableAutoScaling.fromMap(
          (map['autoScaling']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
