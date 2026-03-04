// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_salesforce_source_config_exclude_objects_object.dart';

class StreamSourceConfigSalesforceSourceConfigExcludeObjects {
  /// Salesforce objects in data source.
  /// Structure is documented below.
  final pulumi.Input<
    List<StreamSourceConfigSalesforceSourceConfigExcludeObjectsObject>
  >
  objects;

  /// Creates a new [StreamSourceConfigSalesforceSourceConfigExcludeObjects].
  /// [objects] Salesforce objects in data source.
  StreamSourceConfigSalesforceSourceConfigExcludeObjects({
    required this.objects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objects':
          pulumi.Input.mapInputValue<
            List<StreamSourceConfigSalesforceSourceConfigExcludeObjectsObject>,
            List<Map<String, dynamic>>
          >(
            objects,
            (value) =>
                pulumi.Input.encodeList<
                  StreamSourceConfigSalesforceSourceConfigExcludeObjectsObject,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory StreamSourceConfigSalesforceSourceConfigExcludeObjects.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamSourceConfigSalesforceSourceConfigExcludeObjects(
      objects: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          StreamSourceConfigSalesforceSourceConfigExcludeObjectsObject
        >(
          map['objects']!,
          (value) =>
              StreamSourceConfigSalesforceSourceConfigExcludeObjectsObject.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
