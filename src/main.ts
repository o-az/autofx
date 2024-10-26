import '@std/dotenv/load'
import { Bot } from 'grammy'

const TELEGRAM_BOT_TOKEN = Deno.env.get('TELEGRAM_BOT_TOKEN')

if (!TELEGRAM_BOT_TOKEN?.length) throw new Error('Missing Bot token')

const bot = new Bot(TELEGRAM_BOT_TOKEN)

bot.command('start', (context) => context.reply('Welcome! Up and running.'))

bot.on('message', (context) => context.reply('Got another message!'))

bot.start({
  onStart: (botInfo) => {
    console.info(botInfo)
  },
})
