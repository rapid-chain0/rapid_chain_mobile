import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rapid_chain/domain/entity/reference/my_reference_user_entity.dart';
import 'package:rapid_chain/presentation/widget/card/card_global_widget.dart';
import 'package:rapid_chain/presentation/widget/image/network_image_global.dart';
import 'package:rapid_chain/presentation/widget/label/label_global_widget.dart';
import 'package:rapid_chain/util/extension/design_extension/edge_insets_extension.dart';
import 'package:rapid_chain/util/extension/design_extension/spacer_extension.dart';

class ReferencedListRowWidget extends StatelessWidget {
  final MyReferenceUserEntity user;
  const ReferencedListRowWidget({required this.user, super.key});

  @override
  Widget build(BuildContext context) {
    return CardGlobalWidget(
      child: Padding(
        padding: context.LargeAllEdgeInsets,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              child: SizedBox(
                height: 30,
                width: 30,
                child: NetworkImageGlobal(source: user.profilePicture.url),
              ),
            ),
            Gap(context.LargeSpacer),
            Expanded(child: LabelGlobalWidget(title: user.userName)),
          ],
        ),
      ),
    );
  }
}
