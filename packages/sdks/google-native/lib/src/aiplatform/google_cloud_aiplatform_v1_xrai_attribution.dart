// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_blur_baseline_config.dart';
import 'google_cloud_aiplatform_v1_smooth_grad_config.dart';

/// An explanation method that redistributes Integrated Gradients attributions to segmented regions, taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1906.02825 Supported only by image Models.
class GoogleCloudAiplatformV1XraiAttribution {
  /// Config for XRAI with blur baseline. When enabled, a linear path from the maximally blurred image to the input image is created. Using a blurred baseline instead of zero (black image) is motivated by the BlurIG approach explained here: https://arxiv.org/abs/2004.03383
  final pulumi.Input<GoogleCloudAiplatformV1BlurBaselineConfig>? blurBaselineConfig;
  /// Config for SmoothGrad approximation of gradients. When enabled, the gradients are approximated by averaging the gradients from noisy samples in the vicinity of the inputs. Adding noise can help improve the computed gradients. Refer to this paper for more details: https://arxiv.org/pdf/1706.03825.pdf
  final pulumi.Input<GoogleCloudAiplatformV1SmoothGradConfig>? smoothGradConfig;
  /// The number of steps for approximating the path integral. A good value to start is 50 and gradually increase until the sum to diff property is met within the desired error range. Valid range of its value is [1, 100], inclusively.
  final pulumi.Input<int> stepCount;

  /// Creates a new [GoogleCloudAiplatformV1XraiAttribution].
  /// [blurBaselineConfig] Config for XRAI with blur baseline. When enabled, a linear path from the maximally blurred image to the input image is created. Using a blurred baseline instead of zero (black image) is motivated by the BlurIG approach explained here: https://arxiv.org/abs/2004.03383
  /// [smoothGradConfig] Config for SmoothGrad approximation of gradients. When enabled, the gradients are approximated by averaging the gradients from noisy samples in the vicinity of the inputs. Adding noise can help improve the computed gradients. Refer to this paper for more details: https://arxiv.org/pdf/1706.03825.pdf
  /// [stepCount] The number of steps for approximating the path integral. A good value to start is 50 and gradually increase until the sum to diff property is met within the desired error range. Valid range of its value is [1, 100], inclusively.
  const GoogleCloudAiplatformV1XraiAttribution({
    this.blurBaselineConfig,
    this.smoothGradConfig,
    required this.stepCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blurBaselineConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1BlurBaselineConfig, Map<String, dynamic>>(blurBaselineConfig, (value) => value.toMap()),
      'smoothGradConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1SmoothGradConfig, Map<String, dynamic>>(smoothGradConfig, (value) => value.toMap()),
      'stepCount': stepCount,
    };
  }

  factory GoogleCloudAiplatformV1XraiAttribution.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1XraiAttribution(
      blurBaselineConfig: (() { final guardedValue = map['blurBaselineConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1BlurBaselineConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      smoothGradConfig: (() { final guardedValue = map['smoothGradConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1SmoothGradConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stepCount: pulumi.Input.fromValue(map['stepCount'] as int),
    );
  }
}

