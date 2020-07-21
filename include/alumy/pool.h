#ifndef __POOL_H
#define __POOL_H

#include "alumy/types.h"
#include "alumy/base.h"
#include "alumy/list.h"

__BEGIN_DECLS


/**
 * struct pool - �ڴ��
 *
 * @free: ��������
 * @nr_free: ����Ԫ�ظ���
 * @nr_used: ʹ�õ�Ԫ�ظ���
 */
typedef struct pool {
	list_head_t free;
	int32_t nr_free;
	int32_t nr_used;
	int32_t nr_total;
}pool_t;


void create_pool(pool_t *po, void *buf, int32_t nr, size_t sz, off_t offset);
void *get_from_pool(pool_t *po, int32_t offset);
void put_into_pool(pool_t *po, void *ent, int32_t offset);

__END_DECLS

#endif
