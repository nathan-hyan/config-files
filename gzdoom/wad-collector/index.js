import { intro, outro, text } from '@clack/prompts';

intro(`Wad Collector`);


const wadURL = await text({
  message: 'Paste the direct download link for the WAD',
  placeholder: 'https://youfailit.net/pub/idgames/levels/doom2/Ports/megawads/1x1.zip',

  validate(value) {
    if (value.length === 0) return `A link is required!`;
  },
});

outro(`Come back soon!`);