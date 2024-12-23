import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:gap/gap.dart';
import 'package:rapid_chain/config/base/view/base_view.dart';
import 'package:rapid_chain/presentation/view/home/pages/code/view_model/code_view_model.dart';
import 'package:rapid_chain/presentation/view/home/pages/code/widget/code_claim_widget.dart';
import 'package:rapid_chain/presentation/view/home/pages/code/widget/task_list_row_widget.dart';
import 'package:rapid_chain/presentation/widget/divider/divider_global_widget.dart';
import 'package:rapid_chain/presentation/widget/label/label_global_widget.dart';
import 'package:rapid_chain/util/constant/general_enum.dart';
import 'package:rapid_chain/util/extension/design_extension/edge_insets_extension.dart';
import 'package:rapid_chain/util/extension/design_extension/spacer_extension.dart';

class CodeView extends StatelessWidget {
  const CodeView({super.key});
  @override
  Widget build(BuildContext context) {
    return BaseView<CodeViewModel>(
      viewModel: CodeViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, CodeViewModel value) => Scaffold(
        body: SafeArea(
          bottom: false,
          child: ListView(
            padding: context.MidHorizontalEdgeInsets,
            children: [
              //claim gelcecek
              CodeClaimWidget(code: (code) => value.collectCode(code)),
              Gap(context.LargeSpacer),
              const DividerGlobalWidget(),
              Gap(context.LargeSpacer),
              const LabelGlobalWidget(
                title: "Tasks",
                fontWeight: FontWeight.w800,
                fontSize: FONT_SIZE.HEADLINE_LARGE,
              ),
              const LabelGlobalWidget(
                title: "You can earn points by completing tasks.",
                fontWeight: FontWeight.w400,
                textColor: APPLICATION_COLOR.SUBTITLE,
                fontSize: FONT_SIZE.BODY_MEDIUM,
              ),
              Gap(context.LargeSpacer),
              Observer(builder: (context) {
                return ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: value.taskList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: context.MidOnlyBottomEdgeInsets,
                      child: GestureDetector(
                        onTap: () => value.taskDetail(value.taskList[index].id),
                        child: TaskListRowWidget(
                          collected: value.taskList[index].collected,
                          cover: value.taskList[index].cover,
                          text: value.taskList[index].title,
                          point: value.taskList[index].point,
                        ),
                      ),
                    );
                  },
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
