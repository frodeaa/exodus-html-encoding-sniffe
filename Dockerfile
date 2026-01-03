FROM public.ecr.aws/lambda/nodejs:24
WORKDIR ${LAMBDA_TASK_ROOT}
COPY . ./
RUN npm install && npm run build
CMD ["dist/handler.handler"]
