import 'package:flutter/material.dart';

enum ChatMessageType { text }
enum MessageStatus { not_sent, not_view, viewed }

class ChatMessage {
  final String text;
  final ChatMessageType messageType;
  final MessageStatus messageStatus;
  final bool isSender;

  ChatMessage({
    required this.text,
    required this.messageType,
    required this.messageStatus,
    required this.isSender,
  });
}

List demeChatMessage = [
  ChatMessage(
    text:
        "Halo, Ruben, terima kasih telah melakukan penyewaan sepeda kami, silahkan untuk datang ke kantor yang telah dipilih, pada pukul 19.00. Untuk mengambil pesanan kamu! Jika ada yang ingin ditanyakan, silahkan chat disini ya !",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,
  ),
  ChatMessage(
    text: "Jangan lupa membawa ktp untuk pengecekan data",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,
  ),
  ChatMessage(
    text: "Harga sewa sepeda berapa?",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: true,
  ),
];
