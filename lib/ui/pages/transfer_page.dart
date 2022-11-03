import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widget/forms.dart';
import 'package:bank_sha/ui/widget/transfer_recent_user_item.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Transfer',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'Search',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          CustomFormField(
            title: 'by username',
            isShowTitle: false,
          ),
          buildRecentUsers(),
        ],
      ),
    );
  }

  Widget buildRecentUsers() {
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Users',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const TransferRecentUserItem(
            imageUrl: 'assets/img_friend1.png',
            name: 'Jennie',
            username: 'jenjen',
            isVerified: true,
          ),
          const TransferRecentUserItem(
            imageUrl: 'assets/img_friend2.png',
            name: 'Lisa',
            username: 'lisaaa',
          ),
          const TransferRecentUserItem(
            imageUrl: 'assets/img_friend3.png',
            name: 'Rose',
            username: 'Rosie',
          ),
        ],
      ),
    );
  }
}