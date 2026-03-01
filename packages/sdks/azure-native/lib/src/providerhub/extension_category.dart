enum ExtensionCategory {
  notSpecified("NotSpecified"),
  resourceCreationValidate("ResourceCreationValidate"),
  resourceCreationBegin("ResourceCreationBegin"),
  resourceCreationCompleted("ResourceCreationCompleted"),
  resourceReadValidate("ResourceReadValidate"),
  resourceReadBegin("ResourceReadBegin"),
  resourcePatchValidate("ResourcePatchValidate"),
  resourcePatchCompleted("ResourcePatchCompleted"),
  resourceDeletionValidate("ResourceDeletionValidate"),
  resourceDeletionBegin("ResourceDeletionBegin"),
  resourceDeletionCompleted("ResourceDeletionCompleted"),
  resourcePostAction("ResourcePostAction"),
  subscriptionLifecycleNotification("SubscriptionLifecycleNotification"),
  resourcePatchBegin("ResourcePatchBegin"),
  resourceMoveBegin("ResourceMoveBegin"),
  resourceMoveCompleted("ResourceMoveCompleted"),
  bestMatchOperationBegin("BestMatchOperationBegin"),
  subscriptionLifecycleNotificationDeletion("SubscriptionLifecycleNotificationDeletion");

  const ExtensionCategory(this.value);
  final String value;

  static ExtensionCategory fromValue(String value) {
    for (final item in ExtensionCategory.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExtensionCategory value: $value');
  }
}

