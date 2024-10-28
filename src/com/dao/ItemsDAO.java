package com.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import com.entity.Items;

@Repository("itemsDAO") // Repository标签定义数据库连接的访问 Spring中直接
public interface ItemsDAO {

	/**
	 * ItemsDAO 接口 可以按名称直接调用items.xml配置文件的SQL语句
	 */

	// 插入数据 调用entity包items.xml里的insertItems配置 返回值0(失败),1(成功)
	public int insertItems(Items items);

	// 更新数据 调用entity包items.xml里的updateItems配置 返回值0(失败),1(成功)
	public int updateItems(Items items);

	// 删除数据 调用entity包items.xml里的deleteItems配置 返回值0(失败),1(成功)
	public int deleteItems(String itemsid);

	// 查询全部数据 调用entity包items.xml里的getAllItems配置 返回List类型的数据
	public List<Items> getAllItems();

	// 按照Items类里面的值精确查询 调用entity包items.xml里的getItemsByCond配置 返回List类型的数据
	public List<Items> getItemsByCond(Items items);

	// 按照Items类里面的值模糊查询 调用entity包items.xml里的getItemsByLike配置 返回List类型的数据
	public List<Items> getItemsByLike(Items items);

	// 按主键查询表返回单一的Items实例 调用entity包items.xml里的getItemsById配置
	public Items getItemsById(String itemsid);

}
