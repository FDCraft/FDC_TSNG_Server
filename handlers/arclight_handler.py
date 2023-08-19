from mcdreforged.handler.impl.vanilla_handler import VanillaHandler


class ArclightHandler(VanillaHandler):
	def get_name(self) -> str:
		return 'arclight_handler'

	@classmethod
	def get_content_parsing_formatter(cls):
		return (
			'[{hour:d}:{min:d}:{sec:d} {logging}] [{arclight_logging}]: {content}',
			super().get_content_parsing_formatter()
		)