// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_template_spec_container_env_from_config_map_ref.dart';
import 'get_service_template_spec_container_env_from_secret_ref.dart';

class GetServiceTemplateSpecContainerEnvFrom {
  /// The ConfigMap to select from.
  final pulumi.Input<List<GetServiceTemplateSpecContainerEnvFromConfigMapRef>>
  configMapReves;

  /// An optional identifier to prepend to each key in the ConfigMap.
  final pulumi.Input<String> prefix;

  /// The Secret to select from.
  final pulumi.Input<List<GetServiceTemplateSpecContainerEnvFromSecretRef>>
  secretReves;

  /// Creates a new [GetServiceTemplateSpecContainerEnvFrom].
  /// [configMapReves] The ConfigMap to select from.
  /// [prefix] An optional identifier to prepend to each key in the ConfigMap.
  /// [secretReves] The Secret to select from.
  GetServiceTemplateSpecContainerEnvFrom({
    required this.configMapReves,
    required this.prefix,
    required this.secretReves,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configMapReves':
          pulumi.Input.mapInputValue<
            List<GetServiceTemplateSpecContainerEnvFromConfigMapRef>,
            List<Map<String, dynamic>>
          >(
            configMapReves,
            (value) =>
                pulumi.Input.encodeList<
                  GetServiceTemplateSpecContainerEnvFromConfigMapRef,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'prefix': prefix,
      'secretReves':
          pulumi.Input.mapInputValue<
            List<GetServiceTemplateSpecContainerEnvFromSecretRef>,
            List<Map<String, dynamic>>
          >(
            secretReves,
            (value) =>
                pulumi.Input.encodeList<
                  GetServiceTemplateSpecContainerEnvFromSecretRef,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetServiceTemplateSpecContainerEnvFrom.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetServiceTemplateSpecContainerEnvFrom(
      configMapReves: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetServiceTemplateSpecContainerEnvFromConfigMapRef
        >(
          map['configMapReves']!,
          (value) => GetServiceTemplateSpecContainerEnvFromConfigMapRef.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
      secretReves: pulumi.Input.fromValue(
        pulumi
            .Input.decodeList<GetServiceTemplateSpecContainerEnvFromSecretRef>(
          map['secretReves']!,
          (value) => GetServiceTemplateSpecContainerEnvFromSecretRef.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
