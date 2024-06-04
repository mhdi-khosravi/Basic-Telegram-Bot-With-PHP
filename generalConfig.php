<?php
namespace bot\generalConfig;

use bot\telegram\Telegram;

require_once __DIR__ . '/Telegram.php';

define('TOKEN','TOKEN');

define("ADMIN",['x'  => "USER ID"]);

//---------------- Connect Database -----------------//

define('bot',new Telegram(TOKEN));
define("chatId", bot->ChatID() ?? ADMIN);
define("userText", bot->Text() ?? '');
define("updateType", bot->getUpdateType() ?? '');
define("telegramFirstName", bot->FirstName() ?? 'ندارد!!');
define("telegramLastName", bot->LastName() ?? 'ندارد!!');
define("telegramFullName", telegramFirstName." ".telegramLastName);
define("telegramUserName", bot->username() ?? telegramFullName);
define("callback_data", bot->Callback_Data() ?? 'not callback');
define("callback_id", bot->Callback_ID() ?? 'not id');
define("forwardFromId", bot->FromID() ?? 'not set');
define("messageId", bot->MessageID() ?? '');
define("forwardFromUsername", bot->FromUsername() ?? "not set!!");
define("fromChatId",bot->FromChatID() ?? '');
define("data",bot->getData() ?? '');
define("replyToMessageID",bot->ReplyToMessageID() ?? '');
define("replyToMessageFromUserID",bot->ReplyToMessageFromUserID() ?? '');
define("replyToMessageFromUserIDMessage",bot->ReplyToMessageFromUserIDMessage() ?? '');
define("callbackForwardUserType",bot->Callback_forward_user_type() ?? '');
define("callbackForwardUserId",bot->Callback_forward_chatID() ?? '');
define("callbackForwardUsername",bot->Callback_forward_username() ?? '');
define("callbackForwardFullName",bot->Callback_forward_fullName() ?? '');


define("photoId", bot->photoid() ?? '');
define("videoId", bot->videoid() ?? '');
define("audioId", bot->audioid() ?? '');
define("documentId", bot->documentid() ?? '');
define("voiceId", bot->voiceid() ?? '');
define("animationId", bot->gifid() ?? '');
define("videoNoteId", bot->videonoteid() ?? '');
define("mediaCaption", bot->Caption() ?? '');
define("userPhoneNumber", bot->phonenu() ?? '');