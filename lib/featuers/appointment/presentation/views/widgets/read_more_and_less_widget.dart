import 'package:flutter/material.dart';
import 'package:medico/core/utils/app_colors.dart';
import 'package:medico/core/utils/app_styles.dart';
import 'package:parsed_readmore/parsed_readmore.dart';

class ReadMoreAndLessWidget extends StatelessWidget {
  const ReadMoreAndLessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: ParsedReadMore(
        const TextHighlightParser(
            data:
                'Dr. Carly Angel is the top most immunologists specialist in Crist Hospital in London, UK. Dr. Carly Angel is the top most immunologists specialist in Crist Hospital in London, UK. Dr. Carly Angel is the top most immunologists specialist in Crist Hospital in London, UK. Dr. Carly Angel is the top most immunologists specialist in Crist Hospital in London, UK. Dr. Carly Angel is the top most immunologists specialist in Crist Hospital in London, UK.'),
        readMoreText: ' Read More',
        readLessText: ' Read Less',
        readMoreTextStyle: TextStyles.font18Regular(context)
            .copyWith(color: AppColors.mainColorTheme),
        readLessTextStyle: TextStyles.font18Regular(context)
            .copyWith(color: AppColors.mainColorTheme),
        style: TextStyles.font18Regular(context).copyWith(color: Colors.grey),
      ),
    );
  }
}
